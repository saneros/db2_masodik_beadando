package data.jdbc;

public interface JdbcConnectListener {
    public void onJdbcConnect(boolean connected, String username);
}
