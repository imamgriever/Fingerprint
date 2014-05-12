/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fingerprint;

/**
 *
 * @author GEEKABSENT TEAM
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * 
 */
public class database {
    private String dbuser="root";
    private String dbpass="";
    private Statement stmt = null;
    private Connection conec = null;
    private ResultSet rs = null;
    
    public database () {
        try {
            Class.forName("org.gjt.mm.mysql.Driver");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"" + e.getMessage(),"Driver Error",JOptionPane.WARNING_MESSAGE);
        }
        
        try {
            conec = DriverManager.getConnection("jdbc:mysql://localhost/fingerprint",dbuser,dbpass);
            stmt = conec.createStatement();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,""+ e.getMessage(),"Connection Error",JOptionPane.WARNING_MESSAGE);
        }
    }
    
    public ResultSet getData(String SQLString) {
        try {
            rs = stmt.executeQuery(SQLString);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Error : "+ e.getMessage(),"Communication Error",JOptionPane.WARNING_MESSAGE);
        }
        return rs;
    }
    
    
    public void query(String SQLString) {
        try {
            stmt.executeUpdate(SQLString);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Error : "+ e.getMessage(), "Communication Error", JOptionPane.WARNING_MESSAGE);
        }
    }

 
}
