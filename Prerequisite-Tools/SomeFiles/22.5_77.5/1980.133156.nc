CDF   0   
      time       lat       lon          "   CDI       ?Climate Data Interface version 1.6.9 (http://mpimet.mpg.de/cdi)    history      �Thu Jul 27 13:32:03 2017: C:\Users\Siddhanth\Documents\JSPProjectDocuments\parametersandstuff\NCO operator\ncrcat.exe 19900101.00000000010000000000000000000000000000000000000.nc 19900102.00000000010000000000000000000000000000000000000.nc 1980.133156.nc
Thu Jul 27 12:25:19 2017: ncks -3 MERRA2_100.tavg1_2d_slv_Nx.19900101.SUB.nc4 19900101.00000000010000000000000000000000000000000000000.nc
Thu Jul 27 06:55:13 2017: /usr/bin/ncks -O -L 1 --cnk_plc=g2d --cnk_dmn=lon,144 --cnk_dmn=lat,91 --cnk_dmn=time,1 /tmpdata/regridder/services_64876/cdoMERRA2_100.tavg1_2d_slv_Nx.19900101.SUB.nc4c /tmpdata/regridder/services_64876/chunkdeflatecdoMERRA2_100.tavg1_2d_slv_Nx.19900101.SUB.nc4c
Thu Jul 27 06:55:13 2017: cdo -s -L -f nc4c -sellonlatbox,76.875,78.125,20.0,21.0 -selname,PS /ftp/data/s4pa/MERRA2/M2T1NXSLV.5.12.4/1990/01/MERRA2_100.tavg1_2d_slv_Nx.19900101.nc4 /tmpdata/regridder/services_64876/MERRA2_100.tavg1_2d_slv_Nx.19900101.SUB.nc4c       Conventions       CF-1   History       5Original file generated: Tue Jan 27 05:34:22 2015 GMT      Comment       :GMAO filename: d5124_m2_jan79.tavg1_2d_slv_Nx.19900101.nc4     Filename      'MERRA2_100.tavg1_2d_slv_Nx.19900101.nc4    Institution       ,NASA Global Modeling and Assimilation Office   
References        http://gmao.gsfc.nasa.gov      Format        NetCDF-4/HDF-5     SpatialCoverage       global     	VersionID         5.12.4     TemporalRange         1980-01-01 -> 2016-12-31    identifier_product_doi_authority      http://dx.doi.org/     	ShortName         	M2T1NXSLV      	GranuleID         'MERRA2_100.tavg1_2d_slv_Nx.19900101.nc4    ProductionDateTime        5Original file generated: Tue Jan 27 05:34:22 2015 GMT      LongName      dMERRA2 tavg1_2d_slv_Nx: 2d,1-Hourly,Time-Averaged,Single-Level,Assimilation,Single-Level Diagnostics   Title         dMERRA2 tavg1_2d_slv_Nx: 2d,1-Hourly,Time-Averaged,Single-Level,Assimilation,Single-Level Diagnostics   SouthernmostLatitude      -90.0      NorthernmostLatitude      90.0   WesternmostLongitude      -180.0     EasternmostLongitude      179.375    LatitudeResolution        0.5    LongitudeResolution       0.625      DataResolution        0.5 x 0.625    Contact       http://gmao.gsfc.nasa.gov      identifier_product_doi        10.5067/VJAFPLI1CSIV   RangeBeginningDate        
1990-01-01     RangeBeginningTime        00:00:00.000000    RangeEndingDate       
1990-01-01     RangeEndingTime       23:59:59.000000    CDO       @Climate Data Operators version 1.6.9 (http://mpimet.mpg.de/cdo)    NCO       	20170727       nco_openmp_thread_number                  PS                        standard_name         surface_pressure   	long_name         surface_pressure   units         Pa     
_FillValue        Xc_�   missing_value         Xc_�   fmissing_value        Xc_�   vmax      Xc_�   vmin      �c_�      $  L   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y              lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           4   time                standard_name         time   	long_name         time   units         !minutes since 1990-01-01 00:30:00      calendar      standard        p@4      @4�     @5      @S8     @S`     @S�     G�3G��G��G��G�wG��G�[G�SG��        G�V$G��$G��$G�$G��$G��$G��$G�~$G�$@N      G�|�G�̬G��G�8�G�ĬG��G���G���G�@�@^      G���G��G��G�U�G��G�-�G���G���G�]�@f�     G���G���G�
�G�V�G���G�.�G���G���G�b�@n      G�}�G�͢G��G�=�G�͢G��G���G���G�Q�@r�     G�R�G���G���G��G���G���G���G���G�*�@v�     G�!G�qG��G��G�qG��G�UG�UG��@z@     G��G�B�G�f�G���G�B�G���G��G�&�G�ʫ@~      G���G�#�G�O�G���G�#�G�s�G���G��G���@��     G��vG�vG�MvG��vG�vG�mvG��vG�vG��v@��     G���G�)�G�Y�G���G�)�G�u�G���G�	�G���@��     G���G�C�G�k�G���G�;�G���G��G��G���@��     G�NG�bNG��NG��NG�^NG��NG�2NG�:NG��N@�`     G�-�G���G���G��G���G���G�M�G�Y�G���@�@     G�=�G���G���G���G���G���G�a�G�i�G�	�@�      G�?NG��NG��NG��NG��NG��NG�_NG�gNG�N@�      G�2EG��EG��EG��EG�zEG��EG�REG�VEG��E@��     G�!�G�q�G���G���G�e�G���G�E�G�A�G���@��     G�G�bG��G��G�VG��G�:G�6G��@��     G���G�O�G�k�G�ÄG�C�G���G�/�G�#�G���@��     G���G�?�G�_�G���G�7�G�{�G�+�G��G���@��     G���G�A�G�a�G���G�9�G�}�G�-�G��G���@��     G��G�P�G�l�G�̑G�H�G���G�<�G�,�G�đ@��     G��G�f�G���G��G�b�G���G�R�G�B�G�޺        G�<UG��UG��UG��UG��UG��UG�lUG�`UG��U@N      G�W�G���G�ÙG��G���G��G���G�{�G��@^      G�u�G���G��G�5�G���G��G���G���G�9�@f�     G�~�G�ʧG��G�>�G�ƧG��G���G���G�J�@n      G�l�G���G�تG�,�G���G� �G���G���G�<�@r�     G�?�G���G���G��G���G�ӽG�s�G�s�G��@v�     G�rG�UrG�yrG��rG�QrG��rG�=rG�=rG��r@z@     G�ֹG�&�G�F�G���G��G�j�G��G�
�G���@~      G��G�
G�&G�rG�G�JG��G��G��@��     G���G��G��G�i�G���G�E�G���G���G���@��     G��G�G�1G�yG�G�YG��G��G��@��     G��!G�;!G�W!G��!G�3!G�{!G�!G�!G��!@��     G�/G�k/G��/G��/G�c/G��/G�7/G�C/G��/@�`     G�C�G���G���G���G���G���G�_�G�k�G��@�@     G�`�G���G���G��G���G���G�|�G���G�,�@�      G�j�G���G�ҶG�&�G���G���G���G���G�2�@�      G�^�G���G�ƑG��G���G��G�~�G���G�&�@��     G�E�G���G���G�	�G���G�գG�m�G�u�G��@��     G�2�G���G���G���G���G�G�^�G�f�G���@��     G�G�sG��G��G�oG��G�KG�OG��@��     G�0G�h0G��0G��0G�d0G��0G�@0G�D0G��0@��     G�G�kG��G��G�gG��G�?G�CG��@��     G�)G��G��G��G�uG��G�MG�QG��@��     