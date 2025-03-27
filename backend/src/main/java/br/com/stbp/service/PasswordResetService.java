package br.com.stbp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import java.util.Random;
import java.util.concurrent.TimeUnit;

@Service
public class PasswordResetService {

    private final StringRedisTemplate redisTemplate;
    private final JavaMailSender mailSender;

    public PasswordResetService(StringRedisTemplate redisTemplate,
                                JavaMailSender mailSender) {
        this.redisTemplate = redisTemplate;
        this.mailSender = mailSender;
    }

    private static final String PREFIX = "password_reset:";

    public void createPasswordResetCode(String email) {
        String code = String.format("%06d", new Random().nextInt(999999));
        redisTemplate.opsForValue().set(PREFIX + email, code, 10, TimeUnit.MINUTES);
        sendCodeByEmail(email, code);
    }

    public boolean validatePasswordResetCode(String email, String code) {
        String key = PREFIX + email;
        String storedCode = redisTemplate.opsForValue().get(key);
        return !storedCode.isEmpty() && storedCode.equals(code);
    }

    public void deleteResetCode(String email) {
        redisTemplate.delete(PREFIX + email);
    }

    private void sendCodeByEmail(String email, String code) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(email);
        message.setSubject("Código para recuperação de senha");
        message.setText("Seu código de recuperação é: " + code);
        mailSender.send(message);
    }
}
