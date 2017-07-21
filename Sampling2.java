import java.io.*;

class Sampling2
{
		public static void main(String args[])
		{
				try
				{
					StringBuilder command = new StringBuilder("cmd /c cd \"C:\\Users\\Siddhanth\\Documents\\JSPProjectDocuments\\parametersandstuff\" & wget \"https://goldsmr4.gesdisc.eosdis.nasa.gov/cgi-bin/OTF/HTTP_DpFileDownloadMERRA2.pl?DATASET=MERRA_DP&FCP_DIR=/ftp/private/tmp/&APPLICATION=SUBSET_MERRA2&FILTER=SUBSET_MERRA2&SUB_LONMIN=-180&SUB_LONMAX=180&SUB_LATMAX=90&SUB_LATMIN=-90&OUTPUT_FORMAT=nc4c&LOOKUPID_List=M2T1NXSLV&STARTYR=1980&STARTMON=01&STARTDAY=01&ENDYR=1980&ENDMON=12&ENDDAY=31&variable=ps&variable=t10m&variable=t2m&variable=u10m&variable=u2m&variable=u50m&variable=v10m&variable=v2m&variable=v50m&\" -O yourfilename.txt");
					System.out.println(command);
					Process process = Runtime.getRuntime().exec(command.toString());
					
					Thread.currentThread().sleep(9000);
				
					File f = new File("C:\\Users\\Siddhanth\\Documents\\JSPProjectDocuments\\parametersandstuff","yourfilename.txt");
					FileInputStream fis = new FileInputStream(f);
					int length = fis.available();
					System.out.println(length);
					char file[] = new char[length];
					for(int i=0;i<length;i++)
					{
							file[i] = (char)fis.read();
					}
					StringBuilder wgetId= new StringBuilder("");
				
					for(int i=0;i<length;i++)
					{
							
							if(file[i]=='W' && file[i+1]=='G' && file[i+2]=='E' && file[i+3]=='T' && file[i+4]=='_' && file[i+5]=='I' && file[i+6]=='D')
							{
								for(int j=0;j<8;j++)
								{
									wgetId.append(file[i+8+j]);
								}
								break;
							}
					}
					
					System.out.println(wgetId);
					
					StringBuilder command2 = new StringBuilder("https://goldsmr4.gesdisc.eosdis.nasa.gov/cgi-bin/OTF/HTTP_DpFileDownloadMERRA2.pl?WGET_ID=");
					command2 = command2.append(wgetId).append("&APPLICATION=SUBSET_MERRA2");
					
					command = new StringBuilder("cmd /c cd \"C:\\Users\\Siddhanth\\Documents\\JSPProjectDocuments\\parametersandstuff\" & wget -r \"");
					command = command.append(command2).append("\" -O wget_1234.dat");
					
					System.out.println(command);
				
					process = Runtime.getRuntime().exec(command.toString());
					
							command = new StringBuilder("cmd /c cd \"C:\\Users\\Siddhanth\\Documents\\JSPProjectDocuments\\parametersandstuff\" & wget --load-cookies \"C:\\Users\\Siddhanth\\Documents\\JSPProjectDocuments\\parametersandstuff/.urs_cookies\" --save-cookies \"C:\\Users\\Siddhanth\\Documents\\JSPProjectDocuments\\parametersandstuff/.urs_cookies\" --auth-no-challenge=on --keep-session-cookies --content-disposition -i wget_week1of1980.dat -P ./SomeFiles");

							
				}
				catch(Exception e)
				{
						e.printStackTrace();
				}
		}
}
