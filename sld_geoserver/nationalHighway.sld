<?xml version="1.0" encoding="UTF-8"?> 
<StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0"> 
	<UserLayer> 
		<UserStyle> 
			<Name>line_nationalHighway</Name> 
			<Title>nationalHighway</Title> 
			<Abstract>nationalHighway</Abstract> 
			<FeatureTypeStyle> 
			<Rule>	
				<MaxScaleDenominator>1627564</MaxScaleDenominator>
				<TextSymbolizer>
					<VendorOption name="followLine">true</VendorOption>
					<Label>
					<ogc:PropertyName>name</ogc:PropertyName>
					</Label>
					<Font>
					<CssParameter name="font-style">Normal</CssParameter>
					<CssParameter name="font-size">13</CssParameter>
					<CssParameter name="font-weight">bold</CssParameter>
					</Font>
					<Fill>
					<CssParameter name="fill">#FF0000</CssParameter>
					</Fill>
				</TextSymbolizer>
			</Rule>
			<Rule>
                    <Name>role01</Name>
                    <Title>highway</Title>
                    <Abstract>Abstract</Abstract>
                    <MinScaleDenominator>1627564</MinScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#af8d26</ogc:Literal>
							</CssParameter>
                            <CssParameter name="stroke-width">
                                <ogc:Literal>3.0</ogc:Literal>
							</CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#f2bf24</ogc:Literal>
                            </CssParameter>
                            <CssParameter name="stroke-width">
                                <ogc:Literal>2</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                </Rule>
				<Rule>
                    <Name>role02</Name>
                    <Title>highway</Title>
                    <Abstract>Abstract</Abstract>
                    <MinScaleDenominator>813782</MinScaleDenominator>
					<MaxScaleDenominator>1627564</MaxScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>4.5</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#f2bf24</ogc:Literal>
                            </CssParameter>
                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>3.5</ogc:Literal>
                            </CssParameter>

                        </Stroke>
                    </LineSymbolizer>
                </Rule>
				<Rule>
                    <Name>role03</Name>
                    <Title>highway</Title>
                    <Abstract>Abstract</Abstract>
                    <MinScaleDenominator>406891</MinScaleDenominator>
					<MaxScaleDenominator>813782</MaxScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>6.0</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#f2bf24</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>5.0</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                </Rule>
				<Rule>
                    <Name>role04</Name>
                    <Title>highway</Title>
                    <Abstract>Abstract</Abstract>
                    <MinScaleDenominator>203445</MinScaleDenominator>
					<MaxScaleDenominator>406891</MaxScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>7.5</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#f2bf24</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>6.5</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                </Rule>
				<Rule>
                    <Name>role05</Name>
                    <Title>highway</Title>
                    <Abstract>Abstract</Abstract>
                    <MinScaleDenominator>101722</MinScaleDenominator>
					<MaxScaleDenominator>203445</MaxScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>9.0</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#f2bf24</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>8.0</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
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
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>10.5</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#f2bf24</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>9.5</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
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
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>12</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#f2bf24</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>11</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
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
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>13.5</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#f2bf24</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>12.5</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
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
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>8.5</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#f2bf24</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>7.5</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                </Rule>
				<Rule>
                    <Name>role10</Name>
                    <Title>highway</Title>
                    <Abstract>Abstract</Abstract>
					<MaxScaleDenominator>6357</MaxScaleDenominator>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>10</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                    <LineSymbolizer>
                        <Stroke>
                            <CssParameter name="stroke">
                                <ogc:Literal>#f2bf24</ogc:Literal>
                            </CssParameter>                           
                            <CssParameter name="stroke-width">
                                <ogc:Literal>9</ogc:Literal>
                            </CssParameter>
                        </Stroke>
                    </LineSymbolizer>
                </Rule>				
			</FeatureTypeStyle>   
		</UserStyle> 
	</UserLayer> 
</StyledLayerDescriptor>