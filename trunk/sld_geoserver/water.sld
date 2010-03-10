<?xml version="1.0" encoding="UTF-8"?> 
<StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0"> 
	<UserLayer> 
	<UserStyle>
		<FeatureTypeStyle>
			<Rule> 
				<PolygonSymbolizer>
					<Fill>
					<CssParameter name="Fill">
					<ogc:Literal>#99b3cc</ogc:Literal>
					</CssParameter>
					<Stroke>
					<CssParameter name="Stroke">#99b3cc</CssParameter>
					</Stroke>
					</Fill>
				</PolygonSymbolizer>
			</Rule>
			<Rule>	
				<MaxScaleDenominator>92310</MaxScaleDenominator>
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
		</FeatureTypeStyle>
	</UserStyle>
	</UserLayer> 
</StyledLayerDescriptor>