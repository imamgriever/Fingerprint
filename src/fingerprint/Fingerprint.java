/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fingerprint;
import java.sql.Timestamp;
/**
 *
 * @author Malik
 */
public class Fingerprint {

    /**
     * @param args the command line arguments
     */
    
   private String username, password;
   private String id, nama, alamat, umur, jenis_kelamin, departemen;
           
    
   public void setUser(String id, String  nama, String alamat, String umur, String jenis_kelamin, String departemen){
       this.id=id;
       this.nama=nama;
       this.alamat=alamat;
       this.umur=umur;
       this.jenis_kelamin=jenis_kelamin;
       this.departemen=departemen;
       
   }
   
   public void setAdmin (String username, String password) {
       this.username=username;
       this.password=password;
   }
   
    public void setId (String id) {
       this.id=id;
   }
    
   public String getId () {
       return(this.id);
   }
   
   public void hapusUser() {
        database db = new database();

        String s = "delete from data_pegawai where id='"+this.id+"'";
        db.query(s);
    } 
   
   public void tambahUser() {
        database db = new database();
        
        String s ="insert into data_pegawai values ('"+this.id+"','"+this.nama+"','"+this.alamat+"','"+this.umur+"','"+this.jenis_kelamin+"','"+this.departemen+"')";    
        db.query(s);
    }
   
    public void absen() {
        database db = new database();
        Timestamp time = new Timestamp(System.currentTimeMillis());
        
        String ket = ("NULL");
        
        String s ="insert into data_absen_in values ('"+this.id+"','"+time+"','"+ket+"')";    
        db.query(s);
    }
   
   
    public static void main(String[] args) {
        new awal().setVisible(true);
    }
}
