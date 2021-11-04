package boot.practice.mysql.exception;

public class ServiceException extends Exception {

    private final String message;
    private final Integer errorCode;

    public ServiceException(){
        super();
        message = null;
        errorCode = null;
    }

    public ServiceException(String message, Integer errorCode){
        super(message);
        this.errorCode = errorCode;
        this.message = message;
    }

    @Override
    public String getMessage() {
        return message;
    }

    public Integer getErrorCode() {
        return errorCode;
    }
}
