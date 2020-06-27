package Connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnectionManager {
    //椹卞姩绋嬪簭
    private String driverName = "com.mysql.jdbc.Driver";
    //璁剧疆鏁版嵁搴撹繛鎺RL
    private String url="jdbc:mysql://127.0.0.1:3306/beautysystem?useUnicode=true&characterEncoding=utf-8";
    private String user = "root";//鏁版嵁搴撶櫥褰曠敤鎴峰悕
    private String password ="123456";//鏁版嵁搴撶櫥褰曞瘑鐮�
    public void setDriverName(String newDriverName) {
        driverName = newDriverName;
    }
    public String getDriverName() {
        return driverName;
    }
    public void setUrl(String newUrl) {
        url = newUrl;
    }
    public String getUrl() {
        return url;
    }
    public void setUser(String newUser) {
        user = newUser;
    }
    public String getUser() {
        return user;
    }
    public void setPassword(String newPassword) {
        password = newPassword;
    }
    public String getPassword() {
        return password;
    }    
    public Connection getConnection() {
        try {
            Class.forName(driverName);
            return DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }  
}
