package br.com.stbp.model.dto;


public interface BaseDto<T extends BaseDto<T>> {
    T withId(Long id);
}