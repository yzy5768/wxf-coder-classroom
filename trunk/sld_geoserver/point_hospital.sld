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
							<ExternalGraphic>
							<OnlineResource xlink:type="simple" xlink:href="Hospital.png" />
							<Format>image/png</Format>
						  </ExternalGraphic>
							<Opacity>
								<ogc:Literal>1.0</ogc:Literal>
							</Opacity>
							<Size>
								<ogc:Literal>10</ogc:Literal>
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
							<CssParameter name="fill">#ee9999</CssParameter>
						</Fill>
					</TextSymbolizer>
				</Rule>		
				<Rule>
					<MinScaleDenominator>11512.5</MinScaleDenominator>
					<MaxScaleDenominator>23025</MaxScaleDenominator>
					<PointSymbolizer>
						<Graphic>
							<ExternalGraphic>
							<OnlineResource xlink:type="simple" xlink:href="Hospital.png" />
							<Format>image/png</Format>
						  </ExternalGraphic>
							<Opacity>
								<ogc:Literal>1.0</ogc:Literal>
							</Opacity>
							<Size>
								<ogc:Literal>10</ogc:Literal>
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
							<CssParameter name="fill">#ee3333</CssParameter>
						</Fill>
					</TextSymbolizer>
				</Rule>		
				<Rule>
					<MinScaleDenominator>5756.25</MinScaleDenominator>
					<MaxScaleDenominator>11512.5</MaxScaleDenominator>
					<PointSymbolizer>
						<Graphic>
							<ExternalGraphic>
							<OnlineResource xlink:type="simple" xlink:href="Hospital.png" />
							<Format>image/png</Format>
						  </ExternalGraphic>
							<Opacity>
								<ogc:Literal>1.0</ogc:Literal>
							</Opacity>
							<Size>
								<ogc:Literal>10</ogc:Literal>
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
							<CssParameter name="fill">#ff2222</CssParameter>
						</Fill>
					</TextSymbolizer>
				</Rule>
				<Rule>
					<MaxScaleDenominator>5756.25</MaxScaleDenominator>
					<PointSymbolizer>
						<Graphic>
							<ExternalGraphic>
							<OnlineResource xlink:type="simple" xlink:href="Hospital.png" />
							<Format>image/png</Format>
						  </ExternalGraphic>
							<Opacity>
								<ogc:Literal>1.0</ogc:Literal>
							</Opacity>
							<Size>
								<ogc:Literal>12</ogc:Literal>
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
							<CssParameter name="fill">#FF0000</CssParameter>
						</Fill>
					</TextSymbolizer>
				</Rule>
			</FeatureTypeStyle>
		</UserStyle>
	</NamedLayer>
</StyledLayerDescriptor>