<?xml version="1.0" encoding="UTF-8"?> 
<StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0"> 
	<UserLayer> 
		<UserStyle> 
			<Name>line_municipalRoads</Name> 
			<FeatureTypeStyle> 
				<Rule>
                    <Name>role05</Name>
                    <Title>highway</Title>
                    <Abstract>Abstract</Abstract>
                    <MinScaleDenominator>101722</MinScaleDenominator>
					<MaxScaleDenominator>203445</MaxScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#FFF0C0</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>3.0</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#FFFEC5</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>2.0</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    					<TextSymbolizer>
						<VendorOption name="followLine">true</VendorOption>
						<Label>
						<ogc:PropertyName>name</ogc:PropertyName>
						</Label>
						<Font>
						<CssParameter name="font-style">Normal</CssParameter>
						<CssParameter name="font-size">8</CssParameter>
						<CssParameter name="font-weight">bold</CssParameter>
						</Font>
						<Fill>
						<CssParameter name="fill">#B0B0B0</CssParameter>
						</Fill>
					</TextSymbolizer>
                </Rule>
				<Rule>
                    <Name>role06</Name>
                    <Title>highway</Title>
                    <Abstract>Abstract</Abstract>
                    <MinScaleDenominator>50861</MinScaleDenominator>
					<MaxScaleDenominator>101722</MaxScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#FFF0C0</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>7.5</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#FFFEC5</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>6.5</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <TextSymbolizer>
						<VendorOption name="followLine">true</VendorOption>
						<Label>
						<ogc:PropertyName>name</ogc:PropertyName>
						</Label>
						<Font>
						<CssParameter name="font-style">Normal</CssParameter>
						<CssParameter name="font-size">9</CssParameter>
						<CssParameter name="font-weight">bold</CssParameter>
						</Font>
						<Fill>
						<CssParameter name="fill">#BBBBBB</CssParameter>
						</Fill>
					</TextSymbolizer>
                </Rule>
				<Rule>
                    <Name>role07</Name>
                    <Title>highway</Title>
                    <Abstract>Abstract</Abstract>
                    <MinScaleDenominator>25430</MinScaleDenominator>
					<MaxScaleDenominator>50861</MaxScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#FFF0C0</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>9</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#FFFEC5</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>8</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                     <TextSymbolizer>
						<VendorOption name="followLine">true</VendorOption>
						<Label>
						<ogc:PropertyName>name</ogc:PropertyName>
						</Label>
						<Font>
						<CssParameter name="font-style">Normal</CssParameter>
						<CssParameter name="font-size">10</CssParameter>
						<CssParameter name="font-weight">bold</CssParameter>
						</Font>
						<Fill>
						<CssParameter name="fill">#AAAAAA</CssParameter>
						</Fill>
					</TextSymbolizer>
                </Rule>
				<Rule>
                    <Name>role08</Name>
                    <Title>highway</Title>
                    <Abstract>Abstract</Abstract>
                    <MinScaleDenominator>12715</MinScaleDenominator>
					<MaxScaleDenominator>25430</MaxScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#FFF0C0</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>10.5</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#FFFEC5</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>9.5</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <TextSymbolizer>
						<VendorOption name="followLine">true</VendorOption>
						<Label>
						<ogc:PropertyName>name</ogc:PropertyName>
						</Label>
						<Font>
						<CssParameter name="font-style">Normal</CssParameter>
						<CssParameter name="font-size">11</CssParameter>
						<CssParameter name="font-weight">bold</CssParameter>
						</Font>
						<Fill>
						<CssParameter name="fill">#999999</CssParameter>
						</Fill>
					</TextSymbolizer>
                </Rule>
				<Rule>
                    <Name>role09</Name>
                    <Title>highway</Title>
                    <Abstract>Abstract</Abstract>
                    <MinScaleDenominator>6357</MinScaleDenominator>
					<MaxScaleDenominator>12715</MaxScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#FFF0C0</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>6.0</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#FFFEC5</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>5.0</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <TextSymbolizer>
						<VendorOption name="followLine">true</VendorOption>
						<Label>
						<ogc:PropertyName>name</ogc:PropertyName>
						</Label>
						<Font>
						<CssParameter name="font-style">Normal</CssParameter>
						<CssParameter name="font-size">11</CssParameter>
						<CssParameter name="font-weight">bold</CssParameter>
						</Font>
						<Fill>
						<CssParameter name="fill">#888888</CssParameter>
						</Fill>
					</TextSymbolizer>
                </Rule>
				<Rule>
                    <Name>role10</Name>
                    <Title>highway</Title>
                    <Abstract>Abstract</Abstract>
                    <MaxScaleDenominator>6357</MaxScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#FFF0C0</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>7.5</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#FFFEC5</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>6.5</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                                        <TextSymbolizer>
						<VendorOption name="followLine">true</VendorOption>
						<Label>
						<ogc:PropertyName>name</ogc:PropertyName>
						</Label>
						<Font>
						<CssParameter name="font-style">Normal</CssParameter>
						<CssParameter name="font-size">11</CssParameter>
						<CssParameter name="font-weight">bold</CssParameter>
						</Font>
						<Fill>
						<CssParameter name="fill">#777777</CssParameter>
						</Fill>
					</TextSymbolizer>
                </Rule>				
			</FeatureTypeStyle>   
		</UserStyle> 
	</UserLayer> 
</StyledLayerDescriptor>