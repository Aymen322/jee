package model;

public enum CommandStatus {
    PENDING,
    IN_PROGRESS,
    COMPLETED;

    @Override
    public String toString() {
        return name();
    }
}
