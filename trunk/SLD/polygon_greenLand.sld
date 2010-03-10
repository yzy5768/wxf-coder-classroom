<?xml version="1.0" encoding="UTF-8"?> 
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0"> 
	<sld:UserLayer> 
		<sld:UserStyle> 
			<sld:Name>line_nationalHighway</sld:Name> 
			<sld:Title>绿地</sld:Title> 
			<sld:FeatureTypeStyle> 
			<Rule> 
				<sld:MaxScaleDenominator>118725</sld:MaxScaleDenominator>
				<PolygonSymbolizer>
				<Fill>
				<CssParameter name="fill">
				<ogc:Literal>#A7CC95</ogc:Literal>
				</CssParameter>
				<Stroke>
				<CssParameter name="stroke">#A7CC95</CssParameter>
				</Stroke>
				</Fill>
				</PolygonSymbolizer>
			</Rule>	
			<Rule> 
			<sld:MaxScaleDenominator>30983</sld:MaxScaleDenominator>
				<TextSymbolizer>
					<Label>
					<ogc:PropertyName>name</ogc:PropertyName>
					</Label>
					<Font>
					<CssParameter name="font-style">Normal</CssParameter>
					<CssParameter name="font-size">13</CssParameter>
					<CssParameter name="font-weight">bold</CssParameter>
					</Font>
					<Fill>
					<CssParameter name="fill">#000000</CssParameter>
					</Fill>
				</TextSymbolizer>
				</Rule>
			</sld:FeatureTypeStyle>   
		</sld:UserStyle> 
	</sld:UserLayer> 
</sld:StyledLayerDescriptor> 