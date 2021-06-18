package model;

public class UserVO {
   private String user_id;
   private String password;
   private String user_name;
   private String user_email;
   private String gender;
   
   public String getUser_id() {
      return user_id;
   }
   public void setUser_id(String user_id) {
      this.user_id = user_id;
   }
   public String getPassword() {
      return password;
   }
   public void setPassword(String password) {
      this.password = password;
   }
   public String getUser_name() {
      return user_name;
   }
   public void setUser_name(String user_name) {
      this.user_name = user_name;
   }
   public String getUser_email() {
      return user_email;
   }
   public void setUser_email(String user_email) {
      this.user_email = user_email;
   }
   public String getGender() {
      return gender;
   }
   public void setGender(String gender) {
      this.gender = gender;
   }
   
   
}