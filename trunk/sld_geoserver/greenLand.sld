<?xml version="1.0" encoding="UTF-8"?> 
<StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0"> 
	<UserLayer> 
		<UserStyle> 
			<Name>line_greenLand</Name> 
			<Title>greenLand</Title> 
			<FeatureTypeStyle> 
			<Rule> 
				<MaxScaleDenominator>118725</MaxScaleDenominator>
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
			<MaxScaleDenominator>30983</MaxScaleDenominator>
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