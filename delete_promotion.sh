#!/bin/bash

#v2rayN/v2rayN/Views/MainWindow.xaml.cs
sed -i '/menuPromotion\.Click/d' v2rayN/v2rayN/Views/MainWindow.xaml.cs
line=$(sed -n '/void menuPromotion_Click/=' v2rayN/v2rayN/Views/MainWindow.xaml.cs)
sed -i "$((line-0)),$((line+4))d" v2rayN/v2rayN/Views/MainWindow.xaml.cs

#v2rayN/v2rayN.Desktop/Views/MainWindow.axaml.cs
sed -i '/menuPromotion\.Click/d' v2rayN/v2rayN.Desktop/Views/MainWindow.axaml.cs
line=$(sed -n '/void menuPromotion_Click/=' v2rayN/v2rayN.Desktop/Views/MainWindow.axaml.cs)
sed -i "$((line-0)),$((line+4))d" v2rayN/v2rayN.Desktop/Views/MainWindow.axaml.cs

#v2rayN/v2rayN/Views/MainWindow.xaml
line=$(sed -n '/ResUI.menuPromotion/=' v2rayN/v2rayN/Views/MainWindow.xaml)
sed -i "$((line-8)),$((line+5))d" v2rayN/v2rayN/Views/MainWindow.xaml

#v2rayN/v2rayN.Desktop/Views/MainWindow.axaml
line=$(sed -n '/ResUI.menuPromotion/=' v2rayN/v2rayN.Desktop/Views/MainWindow.axaml)
sed -i "$((line-3)),$((line+4))d" v2rayN/v2rayN.Desktop/Views/MainWindow.axaml
