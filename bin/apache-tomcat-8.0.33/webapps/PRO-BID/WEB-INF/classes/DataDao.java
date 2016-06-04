import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DataDao {
        private Connection connection;

        public DataDao() throws Exception {
                connection = DBInfo.getConn();
        }

        public ArrayList<String> getFrameWork(String frameWork) {
        ArrayList<String> list = new ArrayList<String>();
        PreparedStatement ps = null;
        String data;
        try {
        ps = connection.prepareStatement("SELECT date FROM submissions  WHERE url  LIKE ?");
                ps.setString(1, frameWork + "%");
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                        data = rs.getString(1);
                        list.add(data);
                }
        } catch (Exception e) {
                System.out.println(e.getMessage());
        }
        return list;
}
}