#!/bin/bash

uni_sed(){
  sed "$1" "$2" > "$2".temp
  mv "$2".temp "$2"
}

#v2rayN/v2rayN/Views/MainWindow.xaml.cs
uni_sed '/menuPromotion\.Click/d' v2rayN/v2rayN/Views/MainWindow.xaml.cs
line=$(sed -n '/void MenuPromotion_Click/=' v2rayN/v2rayN/Views/MainWindow.xaml.cs)
uni_sed "$((line-0)),$((line+4))d" v2rayN/v2rayN/Views/MainWindow.xaml.cs

#v2rayN/v2rayN.Desktop/Views/MainWindow.axaml.cs
uni_sed '/menuPromotion\.Click/d' v2rayN/v2rayN.Desktop/Views/MainWindow.axaml.cs
line=$(sed -n '/void MenuPromotion_Click/=' v2rayN/v2rayN.Desktop/Views/MainWindow.axaml.cs)
uni_sed "$((line-0)),$((line+4))d" v2rayN/v2rayN.Desktop/Views/MainWindow.axaml.cs

#v2rayN/v2rayN/Views/MainWindow.xaml
line=$(sed -n '/x:Name.*menuPromotion/=' v2rayN/v2rayN/Views/MainWindow.xaml)
uni_sed "$((line-2)),$((line+13))d" v2rayN/v2rayN/Views/MainWindow.xaml

#v2rayN/v2rayN.Desktop/Views/MainWindow.axaml
uni_sed '/ResUI\.menuPromotion/d' v2rayN/v2rayN.Desktop/Views/MainWindow.axaml
