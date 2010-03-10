<?xml version="1.0" encoding="GBK"?>
<StyledLayerDescriptor version="1.0.0"
xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns="http://www.opengis.net/sld"
xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<NamedLayer>
		<UserStyle>
			<FeatureTypeStyle>
				<Rule>
					<MinScaleDenominator>46050</MinScaleDenominator>
					<MaxScaleDenominator>92100</MaxScaleDenominator>
					<PointSymbolizer>
						<Graphic>
							<Mark>
								<WellKnownName>circle</WellKnownName>
							<Fill>
								<CssParameter name="fill">
									<ogc:Literal>#EEEEEE</ogc:Literal>
								</CssParameter>
							</Fill>
							</Mark>
							<Opacity>
								<ogc:Literal>0.5</ogc:Literal>
							</Opacity>
							<Size>
								<ogc:Literal>6</ogc:Literal>
							</Size>
						</Graphic>
					</PointSymbolizer>
					<TextSymbolizer>
						<Label>
							<ogc:PropertyName>name</ogc:PropertyName>
						</Label>
						<Font>
							<CssParameter name="font-style">Normal</CssParameter>
							<CssParameter name="font-size">14</CssParameter>
							<CssParameter name="font-weight">bold</CssParameter>
						</Font>
						<Fill>
							<CssParameter name="fill">#FFFFFF</CssParameter>
						</Fill>
					</TextSymbolizer>						
					<TextSymbolizer>
						<Label>
							<ogc:PropertyName>name</ogc:PropertyName>
						</Label>
						<Font>
							<CssParameter name="font-style">Normal</CssParameter>
							<CssParameter name="font-size">12</CssParameter>
							<CssParameter name="font-weight">bold</CssParameter>
						</Font>
						<Fill>
							<CssParameter name="fill">#3333FF</CssParameter>
						</Fill>
					</TextSymbolizer>
				</Rule>
			</FeatureTypeStyle>
		</UserStyle>
	</NamedLayer>
</StyledLayerDescriptor>