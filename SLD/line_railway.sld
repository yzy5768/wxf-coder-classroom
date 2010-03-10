<?xml version="1.0" encoding="UTF-8"?> 
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0"> 
	<sld:UserLayer> 
		<sld:UserStyle> 
			<sld:Name>line_railway</sld:Name> 
			<sld:Title>铁路</sld:Title> 
			<sld:Abstract>画2条线.第一条较粗,黑色,置于底层.第二条为白色虚线</sld:Abstract> 
			<sld:FeatureTypeStyle> 
				<sld:Rule> 
					<sld:LineSymbolizer> 
						<sld:Stroke> 
							<sld:CssParameter name="stroke"> 
								<ogc:Literal>#000000</ogc:Literal> 
							</sld:CssParameter> 
							<sld:CssParameter name="stroke-width"> 
								<ogc:Literal>4</ogc:Literal>
							</sld:CssParameter> 
						</sld:Stroke> 
					</sld:LineSymbolizer> 
					<sld:LineSymbolizer> 
						<sld:Stroke> 
							<sld:CssParameter name="stroke">#FFFFFF</sld:CssParameter> 
							<sld:CssParameter name="stroke-width">2</sld:CssParameter> 
							<sld:CssParameter name="stroke-dasharray">15 15</sld:CssParameter>
						</sld:Stroke> 
					</sld:LineSymbolizer> 
					<sld:TextSymbolizer>
						<sld:VendorOption name="followLine">true</sld:VendorOption>
							<sld:Label>
							<ogc:PropertyName>name</ogc:PropertyName>
							</sld:Label>
						<sld:Font>
							<sld:CssParameter name="font-style">Normal</sld:CssParameter>
							<sld:CssParameter name="font-size">16</sld:CssParameter>
							<sld:CssParameter name="font-weight">bold</sld:CssParameter>
						</sld:Font>
						<sld:Fill>
							<sld:CssParameter name="fill">#0000FF</sld:CssParameter>
						</sld:Fill>
					</sld:TextSymbolizer>
				</sld:Rule> 
			</sld:FeatureTypeStyle>   
		</sld:UserStyle> 
	</sld:UserLayer> 
</sld:StyledLayerDescriptor> 