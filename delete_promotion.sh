#!/bin/bash

#v2rayN/v2rayN/Views/MainWindow.xaml.cs
sed -i '/menuPromotion\.Click/d' v2rayN/v2rayN/Views/MainWindow.xaml.cs
line=$(sed -n '/void MenuPromotion_Click/=' v2rayN/v2rayN/Views/MainWindow.xaml.cs)
sed -i "$((line-0)),$((line+4))d" v2rayN/v2rayN/Views/MainWindow.xaml.cs

#v2rayN/v2rayN.Desktop/Views/MainWindow.axaml.cs
sed -i '/menuPromotion\.Click/d' v2rayN/v2rayN.Desktop/Views/MainWindow.axaml.cs
line=$(sed -n '/void MenuPromotion_Click/=' v2rayN/v2rayN.Desktop/Views/MainWindow.axaml.cs)
sed -i "$((line-0)),$((line+4))d" v2rayN/v2rayN.Desktop/Views/MainWindow.axaml.cs

#v2rayN/v2rayN/Views/MainWindow.xaml
line=$(sed -n '/x:Name.*menuPromotion/=' v2rayN/v2rayN/Views/MainWindow.xaml)
sed -i "$((line-2)),$((line+13))d" v2rayN/v2rayN/Views/MainWindow.xaml

#v2rayN/v2rayN.Desktop/Views/MainWindow.axaml
sed -i '/ResUI\.menuPromotion/d' v2rayN/v2rayN.Desktop/Views/MainWindow.axaml
