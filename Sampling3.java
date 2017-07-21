import java.io.*;

class Sampling3
{
		public static void main(String args[])
		{
				try{
					File f = new File("C:\\Users\\Siddhanth\\Documents\\JSPProjectDocuments\\parametersandstuff","yourfilename.txt");
					FileInputStream fis = new FileInputStream(f);
					int length = fis.available();
					System.out.println(length);
					for(int i=0;i<length;i++)
					{
							
							System.out.print((char)fis.read());
					}
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
		}
}