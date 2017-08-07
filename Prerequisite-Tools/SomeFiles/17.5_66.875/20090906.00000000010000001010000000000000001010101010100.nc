CDF      
      time       lat       lon          !   CDI       ?Climate Data Interface version 1.6.9 (http://mpimet.mpg.de/cdi)    history      �Mon Aug 07 10:32:22 2017: ncks -3 MERRA2_300.tavg1_2d_slv_Nx.20090906.SUB.nc4 20090906.00000000010000001010000000000000001010101010100.nc
Mon Aug  7 05:01:38 2017: /usr/bin/ncks -O -L 1 --cnk_plc=g2d --cnk_dmn=lon,144 --cnk_dmn=lat,91 --cnk_dmn=time,1 /tmpdata/regridder/services_13144/cdoMERRA2_300.tavg1_2d_slv_Nx.20090906.SUB.nc4c /tmpdata/regridder/services_13144/chunkdeflatecdoMERRA2_300.tavg1_2d_slv_Nx.20090906.SUB.nc4c
Mon Aug 07 05:01:35 2017: cdo -s -L -f nc4c -sellonlatbox,66.25,67.5,16.875,18.125 -selname,PS,T10M,T2M,U10M,U2M,U50M,V10M,V2M,V50M /ftp/data/s4pa/MERRA2/M2T1NXSLV.5.12.4/2009/09/MERRA2_300.tavg1_2d_slv_Nx.20090906.nc4 /tmpdata/regridder/services_13144/MERRA2_300.tavg1_2d_slv_Nx.20090906.SUB.nc4c      Conventions       CF-1   History       5Original file generated: Sat Mar 14 10:11:18 2015 GMT      Comment       :GMAO filename: d5124_m2_jan00.tavg1_2d_slv_Nx.20090906.nc4     Filename      'MERRA2_300.tavg1_2d_slv_Nx.20090906.nc4    Institution       ,NASA Global Modeling and Assimilation Office   
References        http://gmao.gsfc.nasa.gov      Format        NetCDF-4/HDF-5     SpatialCoverage       global     	VersionID         5.12.4     TemporalRange         1980-01-01 -> 2016-12-31    identifier_product_doi_authority      http://dx.doi.org/     	ShortName         	M2T1NXSLV      	GranuleID         'MERRA2_300.tavg1_2d_slv_Nx.20090906.nc4    ProductionDateTime        5Original file generated: Sat Mar 14 10:11:18 2015 GMT      LongName      dMERRA2 tavg1_2d_slv_Nx: 2d,1-Hourly,Time-Averaged,Single-Level,Assimilation,Single-Level Diagnostics   Title         dMERRA2 tavg1_2d_slv_Nx: 2d,1-Hourly,Time-Averaged,Single-Level,Assimilation,Single-Level Diagnostics   SouthernmostLatitude      -90.0      NorthernmostLatitude      90.0   WesternmostLongitude      -180.0     EasternmostLongitude      179.375    LatitudeResolution        0.5    LongitudeResolution       0.625      DataResolution        0.5 x 0.625    Contact       http://gmao.gsfc.nasa.gov      identifier_product_doi        10.5067/VJAFPLI1CSIV   RangeBeginningDate        
2009-09-06     RangeBeginningTime        00:00:00.000000    RangeEndingDate       
2009-09-06     RangeEndingTime       23:59:59.000000    CDO       @Climate Data Operators version 1.6.9 (http://mpimet.mpg.de/cdo)    NCO       	20170807             PS                        standard_name         surface_pressure   	long_name         surface_pressure   units         Pa     
_FillValue        Xc_�   missing_value         Xc_�   fmissing_value        Xc_�   vmax      Xc_�   vmin      �c_�      $  �   T10M                      standard_name         10-meter_air_temperature   	long_name         10-meter_air_temperature   units         K      
_FillValue        Xc_�   missing_value         Xc_�   fmissing_value        Xc_�   vmax      Xc_�   vmin      �c_�      $  �   T2M                       standard_name         2-meter_air_temperature    	long_name         2-meter_air_temperature    units         K      
_FillValue        Xc_�   missing_value         Xc_�   fmissing_value        Xc_�   vmax      Xc_�   vmin      �c_�      $     U10M                      standard_name         10-meter_eastward_wind     	long_name         10-meter_eastward_wind     units         m s-1      
_FillValue        Xc_�   missing_value         Xc_�   fmissing_value        Xc_�   vmax      Xc_�   vmin      �c_�      $  @   U2M                       standard_name         2-meter_eastward_wind      	long_name         2-meter_eastward_wind      units         m s-1      
_FillValue        Xc_�   missing_value         Xc_�   fmissing_value        Xc_�   vmax      Xc_�   vmin      �c_�      $  d   U50M                      standard_name         eastward_wind_at_50_meters     	long_name         eastward_wind_at_50_meters     units         m s-1      
_FillValue        Xc_�   missing_value         Xc_�   fmissing_value        Xc_�   vmax      Xc_�   vmin      �c_�      $  �   V10M                      standard_name         10-meter_northward_wind    	long_name         10-meter_northward_wind    units         m s-1      
_FillValue        Xc_�   missing_value         Xc_�   fmissing_value        Xc_�   vmax      Xc_�   vmin      �c_�      $  �   V2M                       standard_name         2-meter_northward_wind     	long_name         2-meter_northward_wind     units         m s-1      
_FillValue        Xc_�   missing_value         Xc_�   fmissing_value        Xc_�   vmax      Xc_�   vmin      �c_�      $  �   V50M                      standard_name         northward_wind_at_50_meters    	long_name         northward_wind_at_50_meters    units         m s-1      
_FillValue        Xc_�   missing_value         Xc_�   fmissing_value        Xc_�   vmax      Xc_�   vmin      �c_�      $  �   lat                standard_name         latitude   	long_name         latitude   units         degrees_north      axis      Y           �   lon                standard_name         	longitude      	long_name         	longitude      units         degrees_east   axis      X           �   time                standard_name         time   	long_name         time   units         !minutes since 2009-09-06 00:30:00      calendar      standard        @1      @1�     @2      @P�     @P�     @P�     G�?�G�;�G�7�G�/�G�+�G�'�G��G��G��C�/PC�APC�IPC�1PC�APC�QPC�1PC�?PC�MPC�1(C�C(C�K(C�1(C�A(C�S(C�1(C�?(C�O(AoVA�VA/VAVA�VA?VAoVA�VA�VAo�A��A�A �A ǙA g�@�?2@�o2@�2A4��A5��A3��A/%�A/u�A.��A*e�A*��A*E�@!�K?���?���@�K?�J�?�ږ@�K?��?��@�?���?���?�s�?�S�?v�?��?��?���@86�@
V�?���@+�@ ��?���@"��?��?���        G�Y*G�U*G�U*G�I*G�E*G�E*G�=*G�9*G�9*C�2�C�B�C�P�C�4�C�B�C�R�C�6�C�@�C�N�C�4�C�D�C�P�C�4�C�B�C�T�C�6�C�@�C�P�A��A��A��AB�A��A��A��A��A��Ao�A_�A ��@�f@�f@��f@��f@�f@�fA1�8A2A8A/q8A-!8A,�8A*!8A(�8A(8A&!8@"m&@&?�JL@&?�:L?��L@�&?�:L?��L@�?�:?�2?�j?��?��?�?�Z?|�6@8�*@*?�T@$�*@ D*?�(T@�*?�T?�hT@N      G�wG�wG�wG�kG�gG�kG�[G�[G�[C�8C�DC�TC�8C�DC�RC�:C�DC�NC�7jC�EjC�SjC�7jC�EjC�SjC�9jC�EjC�OjA�nAnA�nA/nAnAnA�nAGnAn@�0K@��K@�0K@��K@�@K@�`K@��K@�PK@��KA,�A-�A-,A'�A(|A%�A#lA#�A �@ٵ@A�?�j@
Y�?��j?��j?�cj?��j?��j@ޞ?�}<?�<?�M<?�-<?�u<?׽<?��<?u*x@3�?@@??��~@�??��~?�`~@ ??��~?� ~@^      GĝeGĝeGĝeGčeGčeGđeG�}eGāeGāeC�:�C�F�C�T�C�8�C�F�C�T�C�:�C�H�C�P�C�9C�GC�UC�7C�GC�UC�;C�IC�QA�#AP#A�#A�#AH#A #A	(#A(#A
�#@��h@��h@��h@�h@�4h@�$h@�4h@�h@�hA(2A)�A+bA"�A$�A$A2A�A2@��?�3e?��e@��?��e?�e?��e?��e?�Se?���?�:�?��?��?�*�?�z�?�*�?�:�?j�e@,�6@G6?Ԏl@�6?�nl?�nl@g6?�nl?��l@f�     Gİ�Gİ�GĬ�GĠ�GĠ�GĠ�GĐ�GĐ�GĐ�C�8zC�DzC�TzC�6zC�DzC�PzC�8zC�FzC�HzC�9,C�E,C�U,C�7,C�E,C�S,C�7,C�G,C�K,A%�AչA��A�A�A�A�A��A	u�@�@@��@@�@@�&@@�v@@�v@@�V@@�v@@�F@A$�DA&cDA(�DA�DA!sDA"�DAcDADA�D@o?�>�?�~�@o?�>�?��?���?���?�.�?��h?�3h?�h?�h?��h?��h?�ch?��h?ef�@$��@	Ժ?�is@��?��s?�)s@��?��s?��s@n      GĬHGĨHGĨHGĜHGĜHGĘHGČHGČHGČHC�5�C�E�C�Q�C�5�C�E�C�M�C�3�C�C�C�I�C�6`C�F`C�P`C�4`C�F`C�P`C�4`C�D`C�J`A]SA�SAmSA	mSA�SASA�SA�SA-S@�� @�� @�� @� @�g @�� @�� @� @�7 A"}�A$ݨA&ݨA��AݨA!-�A]�AͨA�@��?��V?��V@ ��?��V?�mV?�V?��V?�mV?�]?�f]?��]?ٶ]?��]?o��?�f]?�6]?[̺@c
@ �
?�f@3
?�?��@�
?��?�&@r�     GĔ�GĐ�GĐ�GĄ�GĀ�GĀ�G�t�G�t�G�t�C�3[C�?[C�M[C�1[C�C[C�K[C�/[C�A[C�G[C�1�C�?�C�M�C�/�C�C�C�M�C�/�C�A�C�G�AJA�A�A�A	�AJA�AJA@�>�@�>�@��@�^�@���@�.�@���@�^�@���A!SA"uSA$eSAUSA�SA�SAESA�SA5S?�n�?Վ�?�>�?��?�^�?��?��?���?m= ?��4?��4?�y4?�I4?�I4?Z�g?�	4?��4?I�g@	�?�S�?���@)�?�S�?�3�?���?���?���@v�     G�n�G�n�G�j�G�^�G�^�G�Z�G�R�G�R�G�N�C�-@C�;@C�G@C�-@C�?@C�I@C�-@C�;@C�E@C�.C�<C�HC�.C�@C�JC�.C�<C�FAp�A��AH�A��A	�A	�A��A��AX�@��@�S�@�C�@��@��@��@�#�@�S�@�3�A �A ݅A!��A=�Am�A�AM�AͅA-�?�[??��?�;?�[?c"?�{?��?Jv"?� j?��j?y��?�j?�pj?@��?��j?�j?,0�@Q�?�C�?���?��?�#�?z�?��?�c�?]��@z@     G�GcG�GcG�GcG�;cG�;cG�7cG�/cG�+cG�+cC�(cC�6cC�DcC�*cC�8cC�BcC�,cC�8cC�@cC�)tC�7tC�EtC�)tC�9tC�EtC�-tC�9tC�CtA;AAAA�AAKAASAA�AA�AA�AAsA@�n�@�N�@��@��@�n�@��@ߞ�@�>�@�.�A |�A��A��A��A,�A,�A��A��A��?�ve?��e?}��?�fe?��e?=��?�&e?�e?#<�?�%�?���?W�?���?v�?!K�?�e�?d�?
��?��<?��<?��<?��<?�<?O�y?�<?�<?0�y@~      G�+�G�+�G�'�G��G��G��G��G��G��C�'�C�3�C�C�C�'�C�7�C�A�C�-�C�9�C�A�C�)6C�76C�E6C�)6C�96C�C6C�/6C�96C�C6A�XApXA8XA@XA�XA�XAhXA8XAPX@�@�v@�@�v@�f@�V@ݶ@�6@��A�A�A�A1AaA!AAA�A�?�G_?��_?X��?�G_?��_?&^�?�'_?r�?�?��"?�@"?7�C?��"?Z�C?hC?��"?M�C>��?��R?�ER?m��?ĥR?�%R?4�?�%R?��R?ʤ@��     G��G��G��G��G��G��G��G��G��C�+�C�5�C�C�C�-�C�;�C�E�C�1�C�=�C�G�C�-_C�7_C�C_C�-_C�;_C�G_C�1_C�=_C�I_AzAVzAFzA�zAVzAzAVzAVzAz@�,@�I,@�),@�I,@��,@�,@��,@ݹ,@݉,A4�A��A��A��A��A$�A4�A��AT�?�e?��e?EN�?�?e?y~�?@�?��e?m��?:�?��;?z�v?'Bv?�U;?S�v>���?��;?Jv>���?�P�?���?W�b?���?���?Qb?�P�?���?!b@��     G��G��G��G��G��G��G��G��G��C�1�C�7�C�?�C�3�C�;�C�E�C�7�C�?�C�M�C�0�C�8�C�B�C�2�C�<�C�F�C�6�C�@�C�L�A	h�A�A	��A �A(�Ax�@�AUA 0�A P�@�K@�K@�K@�K@��K@��K@�;K@�;K@ڋKAQA�A�A�A�A�A�A�A�?Ōe?��e?3��?��e?s��>�9�?�\e?l�>䡔?�M�?s�$?d$?��?O$>��H?�E�?H�$>¶H?�RU?�"U?C��?�2U?�rU?��?��U?��U>�iT@��     G�)+G�)+G�%+G�+G�+G�+G�+G�+G�+C�7C�?C�?C�7C�CC�IC�9C�EC�QC�6QC�@QC�BQC�6QC�BQC�JQC�8QC�DQC�RQA��A
�A	g�Ao�A�A��@��=@�_=@��=@�G@�`G@�@G@݀G@� G@�G@ӰG@� G@�0GA9�A��A��A��A��A��Ay�A��A1�?˖�?�N�?��?���?y��>���?���?{��>��?��t?o|�?|�?��t?T�>���?�\t?Vj�>��?�?�=?*Z'?��?��>��N?�M?��>��N@��     G�:�G�:�G�:�G�*�G�.�G�*�G��G��G��C�:�C�B�C�F�C�8�C�D�C�P�C�:�C�F�C�T�C�:�C�B�C�F�C�8�C�F�C�P�C�:�C�F�C�T�A��AX�A�@��jA�A��@��j@�Aj@�Aj@�(�@�H�@���@�x�@޸�@��@���@�Ȝ@��A��A��A�A��A&�A6�A	��A6�A��?�~?��?-?�f?�F>�8?Ֆ?�Z>�x?�T�?�d�?�@?�Ԡ?k@>ł�?��?p�@>�Ҁ?��{?�r{?9$�?�"{?��{>���?�b{?��{? ��@�`     G�S1G�S1G�S1G�C1G�G1G�G1G�31G�71G�71C�=1C�E1C�G1C�91C�G1C�U1C�91C�G1C�S1C�;C�GC�IC�9C�IC�UC�9C�GC�SA �^A$^A�^@��A 4^A �^@븼@��@�ȼ@��@�(@�X@�@�8@�@�8@Θ@�XA�A��A+�A��A��A��AS�A��A	+�?��.?��.?YH\?��.?�T.?�\?��.?��.?,�\?��?�E�?8�b?�=�?�ݱ?
b?Ε�?�ͱ?��@�a?�F�?jm�@�a?���?*��@ka?�6�?:m�@�@     G�k�G�o�G�k�G�[�G�_�G�_�G�K�G�O�G�O�C�AbC�IbC�IbC�=bC�IbC�UbC�9bC�GbC�QbC�@�C�H�C�J�C�<�C�J�C�V�C�:�C�H�C�R�@���AkZASZ@�6�@���@�&�@䶴@��@���@�Cw@��w@�w@�Cw@��w@أw@Ów@��w@˓wA��A��Aa�A	��A��A��A�A9�A��@c�?�G�?���?�'�?�W�?S\@��?��?i�\?ݍ�?��?h�?��?�=�?3�?⭊?�M�?H'@>C?���?��@nC?��?ey@C?�܆?Y@�      G�~Gă~Gă~G�s~G�s~G�s~G�c~G�c~G�_~C�C�C�I�C�K�C�=�C�K�C�W�C�9�C�I�C�Q�C�C�C�K�C�M�C�=�C�M�C�W�C�;�C�I�C�Q�@�~�A �SA_S@�.�@��@���@�ަ@��@뎦@�|�@�l�@ߌ�@�܇@��@��@�l�@�\�@ɜ�AD3At3A$3A3AD3A�3@�XeAl3A|3@
�?�?\?��\@?�?�\?�O\@O�?�/\?�\?��M?İM?�M?� M?��M?m��?�M?��M?�PM@��@ ��?�}g@�?�]g?��g@�?��g?��g@�      GąoGąoGāoG�uoG�uoG�qoG�eoG�eoG�aoC�@�C�J�C�L�C�<�C�L�C�X�C�8�C�H�C�P�C�?3C�K3C�O3C�=3C�M3C�Y3C�93C�I3C�S3@�6�AsuA�u@��@�V�@���@��@��@�6�@�]]@�M]@��]@�-]@��]@��]@�M]@ȝ]@�]A�.A�.A�.A�.A�.AN.@��\A&.AV.@5�?��F?�kF@��?�F?�+F@E�?��F?�[F?�%?�?��?�U?ϵ?�e@*�?��?��@&g@W?��@"�@g?�@*'@?��@��     G�svG�svG�kvG�cvG�cvG�_vG�SvG�SvG�OvC�8 C�F C�L C�6 C�J C�V C�4 C�F C�N C�8�C�F�C�N�C�8�C�J�C�V�C�6�C�F�C�P�A�tA�tA\t@��@���At@��@���@��@�7�@���@��@҇�@�7�@���@�w�@���@���A?iA�iA�iA�iAoiA�iA�iAiA�i@��@��?�!�@��@ �?�1�@%��@x�?�a�@?�?�m?�/m@��?�m?��m@��?�m?�/m@0�@z�?��@0��@:�?ڕ�@7��@��?��@��     G�V%G�R%G�N%G�J%G�F%G�>%G�:%G�6%G�2%C�.�C�@�C�J�C�0�C�D�C�R�C�0�C�@�C�H�C�/�C�C�C�K�C�3�C�G�C�S�C�3�C�C�C�K�Ad@A
�@A@@���A@A�@@�x�@���@���@�66@�&6@��6@��6@�6@�&6@��6@҆6@�&6AیA{�A+�A��A�A+�A#�A
��Aی@B@ �B?�d�@ 2B@�B?��@(�B@jB?҄�@}|?�j�?���@m|?�*�?�z�@-|?��?���@/N`@`?�|�@3.`@`?��@;n`@�`?�|�@��     G�5pG�1pG�-pG�)pG�%pG�!pG�pG�pG�pC�)�C�9�C�E�C�)�C�?�C�K�C�)�C�=�C�E�C�-C�?C�IC�/C�CC�OC�/C�AC�IAB�Ar�A��A��A��A��@��@�5�@���@���@�y�@�I�@�i�@�	�@��@��@��@�y�A�A!�A"<A<A,AA
<A\A�@<i?��?��@|i?���?� �@ di@i?¸�?�7�?�7�?���?���?�ר?�?�@��?߷�?�G�@#@?�@(J@	
?��@2*@z?�@��     G�dG�dG�dG�dG�
dG�
dG�dG��dG��dC�)�C�7�C�A�C�)�C�;�C�G�C�)�C�9�C�C�C�-�C�;�C�E�C�-�C�A�C�K�C�-�C�?�C�I�A0�A��A��A@�A �A �@���@���@�A�@�@�_�@��@�O�@���@��@�_�@��@�/�A#�A"C�A!��A�A��AS�A��A�A3�@k?��"?��"@�?�"?�6"@�?�&"?��"?�L�?���?�`�?�D�?���?��?���?���?� �@��?��i?�	i@��?�ii?��i@!Ĵ@L�?�)i@��     G�G�G�G�G�G�G��G��G��C�+�C�9�C�E�C�-�C�=�C�I�C�/�C�;�C�E�C�0�C�>�C�H�C�0�C�@�C�N�C�4�C�@�C�J�A^�A��A
��A.�A�A��@�]�@���@���@��+@��+@��+@�O+@�+@�+@�+@�o+@կ+A#'�Aw�A�A��A�AW�A7�A��A��?�Gp?�kp?��p?��p?�Kp?��p@�?��p?��p?ˇ�?���?e��?���?�'�?|qx?��?��?�|@�*?ҶT?�T@
K*?�T?��T@;*?�T?��T@��     G�#�G�#�G�'�G��G��G��G��G��G��C�3�C�?�C�M�C�5�C�A�C�O�C�9�C�A�C�M�C�6�C�D�C�P�C�8�C�F�C�R�C�<�C�F�C�R�A�bA	)bA�bA)bA)b@���@��@�B�@�R�@��@�S�@�S�@��@ܣ�@�#�@�#�@ϳ�@̓�A �wA>wA�wAnwA^wA�wA	~wA�wA�w?ک�?���?V�?��?�'�?wW�?���?�M�?��C?�\�?��]?6�:?�<�?��?S�:?��?�p�?t�:?�?�9?k�,@ 8�?�q?�)@	 �?��?�)@��     