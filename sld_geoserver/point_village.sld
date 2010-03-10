<?xml version="1.0" encoding="GBK"?>
<StyledLayerDescriptor version="1.0.0"
xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" xmlns="http://www.opengis.net/sld"
xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<NamedLayer>
		<UserStyle>
			<FeatureTypeStyle>
				<Rule>
					<MinScaleDenominator>23025</MinScaleDenominator>
					<MaxScaleDenominator>46050</MaxScaleDenominator>
					<PointSymbolizer>
						<Graphic>
							<Mark>
								<WellKnownName>circle</WellKnownName>
							<Fill>
								<CssParameter name="fill">
									<ogc:Literal>#FFFFFF</ogc:Literal>
								</CssParameter>
							</Fill>
							<Stroke>
								<CssParameter name="stroke">
									<ogc:Literal>#AAAAAA</ogc:Literal>
								</CssParameter>
								<CssParameter name="stroke-width">
									<ogc:Literal>2</ogc:Literal>
								</CssParameter>
							</Stroke>
							</Mark>
							<Opacity>
								<ogc:Literal>1.0</ogc:Literal>
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
							<CssParameter name="font-size">9</CssParameter>
							<CssParameter name="font-weight">bold</CssParameter>
						</Font>
						<Fill>
							<CssParameter name="fill">#999999</CssParameter>
						</Fill>
					</TextSymbolizer>
				</Rule>
				<Rule>
					<MinScaleDenominator>11512.5</MinScaleDenominator>
					<MaxScaleDenominator>23025</MaxScaleDenominator>
					<PointSymbolizer>
						<Graphic>
							<Mark>
								<WellKnownName>circle</WellKnownName>
							<Fill>
								<CssParameter name="fill">
									<ogc:Literal>#FFFFFF</ogc:Literal>
								</CssParameter>
							</Fill>
							<Stroke>
								<CssParameter name="stroke">
									<ogc:Literal>#999999</ogc:Literal>
								</CssParameter>
								<CssParameter name="stroke-width">
									<ogc:Literal>2</ogc:Literal>
								</CssParameter>
							</Stroke>
							</Mark>
							<Opacity>
								<ogc:Literal>1.0</ogc:Literal>
							</Opacity>
							<Size>
								<ogc:Literal>7</ogc:Literal>
							</Size>
						</Graphic>
					</PointSymbolizer>
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
							<CssParameter name="fill">#777777</CssParameter>
						</Fill>
					</TextSymbolizer>
				</Rule>
				<Rule>
					<MaxScaleDenominator>11512.5</MaxScaleDenominator>
					<PointSymbolizer>
						<Graphic>
							<Mark>
								<WellKnownName>circle</WellKnownName>
							<Fill>
								<CssParameter name="fill">
									<ogc:Literal>#FFFFFF</ogc:Literal>
								</CssParameter>
							</Fill>
							<Stroke>
								<CssParameter name="stroke">
									<ogc:Literal>#777777</ogc:Literal>
								</CssParameter>
								<CssParameter name="stroke-width">
									<ogc:Literal>2</ogc:Literal>
								</CssParameter>
							</Stroke>
							</Mark>
							<Opacity>
								<ogc:Literal>1.0</ogc:Literal>
							</Opacity>
							<Size>
								<ogc:Literal>8</ogc:Literal>
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
							<CssParameter name="fill">#555555</CssParameter>
						</Fill>
					</TextSymbolizer>
				</Rule>
			</FeatureTypeStyle>
		</UserStyle>
	</NamedLayer>
</StyledLayerDescriptor>