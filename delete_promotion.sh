#!/bin/bash

sed -i 's/x:Name="menuPromotion"/x:Name="menuPromotion" Visibility="Collapsed"/g' v2rayN/Views/MainWindow.xaml
sed -i 's/x:Name="menuPromotion"/x:Name="menuPromotion" Visibility="Collapsed"/g' v2rayN/v2rayN.Desktop/Views/MainWindow.axaml
