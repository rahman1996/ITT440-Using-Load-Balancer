import java.io.*;
import java.net.*;

public class client{
  public static void main(String []args) throws IOException{
  Socket myclient=new Socket("192.168.19.18",1234);
  DataOutputStream outtoserver=new DataOutputStream(myclient.getOutputStream());
  BufferedReader infromuser=new BufferedReader(new InputStreamReader(System.in));
  String sentence+infromuser.readLine();
  outtoserver.writeBytes(sentences);
  myclient.close();
