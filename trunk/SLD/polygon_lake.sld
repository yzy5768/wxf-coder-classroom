<?xml version="1.0" encoding="UTF-8"?> 
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0"> 
	<sld:UserLayer> 
	<sld:UserStyle>
		<sld:FeatureTypeStyle>
			<Rule> 
				<sld:MaxScaleDenominator>92310</sld:MaxScaleDenominator>
				<sld:PolygonSymbolizer>
				<sld:Fill>
				<sld:CssParameter name="Fill">
				<ogc:Literal>#99b3cc</ogc:Literal>
				</sld:CssParameter>
				<sld:Stroke>
				<sld:CssParameter name="Stroke">#99b3cc</sld:CssParameter>
				</sld:Stroke>
				</sld:Fill>
				</sld:PolygonSymbolizer>
			</Rule>		
			<Rule>	
				<sld:MaxScaleDenominator>18424</sld:MaxScaleDenominator>
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
