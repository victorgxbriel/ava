package br.com.stbp.exception;

public class ResourceNotFoundException extends RuntimeException {

    /**
     * Constructs a new ResourceNotFoundException with the specified detail message.
     *
     * @param message the detail message.
     */
    public ResourceNotFoundException(String message) {
        super(message);
    }
}
