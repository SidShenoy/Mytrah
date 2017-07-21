import java.io.*;

class Sampling
{
		public static void main(String args[])
		{
				try
				{
					
						StringBuilder command = new StringBuilder("cmd /c cd C:\\Users\\Siddhanth\\Documents\\JSPProjectDocuments\\parametersandstuff\\SomeFiles & dir /a-d | find \"File(s)\"");
						System.out.println(command.toString());
								
						Process process = Runtime.getRuntime().exec(command.toString());
					
						BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream()));
					
					char c;
					
					while((c =(char) br.read())!=null)
					{
						System.out.print(c);
					}
				}
				catch(Exception e)
				{
						e.printStackTrace();
				}
		}
}
