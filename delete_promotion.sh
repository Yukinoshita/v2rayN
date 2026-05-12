#!/bin/bash

perl -i -pe 's/x:Name="menuPromotion"/x:Name="menuPromotion" Visibility="Collapsed"/g' v2rayN/v2rayN/Views/MainWindow.xaml
perl -i -pe 's/x:Name="menuPromotion"/x:Name="menuPromotion" Visibility="Collapsed"/g' v2rayN/v2rayN.Desktop/Views/MainWindow.axaml