仿照 baidu 地图的 sld 地图标记语言

国道
省道
市级道路
铁路
乡村街道
高速公路

省界
县界

河流
湖泊
绿地

这些sld语言是与 udig 相匹配的

如果想用到 geoserver 中去,将 sld: 去掉即可

如果想要 “文字沿着道路方向”，需要修改：
<TextSymbolizer>		
<VendorOption name="followLine">true</VendorOption>


欢迎交流：
QQ:467480903
mail:wei1224hf@gmail.com
web:www.wei1224hf.com.cn
