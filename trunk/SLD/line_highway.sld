<?xml version="1.0" encoding="UTF-8"?> 
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0"> 
	<sld:UserLayer> 
		<sld:UserStyle> 
			<sld:Name>line_nationalHighway</sld:Name> 
			<sld:Title>省道</sld:Title> 
			<sld:Abstract></sld:Abstract> 
			<sld:FeatureTypeStyle> 
				<sld:Rule>
                    <sld:Name>rule02</sld:Name>
                    <sld:Title>highway</sld:Title>
                    <sld:Abstract>Abstract</sld:Abstract>
					<sld:MinScaleDenominator>1627564</sld:MinScaleDenominator>
                    <sld:MaxScaleDenominator>813782</sld:MaxScaleDenominator>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>2.5</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFF0AB</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>1.5</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                </sld:Rule>
				<Rule>	
					<sld:MaxScaleDenominator>813782</sld:MaxScaleDenominator>
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
						<CssParameter name="fill">#FF0000</CssParameter>
						</Fill>
					</TextSymbolizer>
				</Rule>
				<sld:Rule>
                    <sld:Name>role03</sld:Name>
                    <sld:Title>highway</sld:Title>
                    <sld:Abstract>Abstract</sld:Abstract>
                    <sld:MinScaleDenominator>406891</sld:MinScaleDenominator>
					<sld:MaxScaleDenominator>813782</sld:MaxScaleDenominator>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>4.0</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFF0AB</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>3.0</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                </sld:Rule>
				<sld:Rule>
                    <sld:Name>role04</sld:Name>
                    <sld:Title>highway</sld:Title>
                    <sld:Abstract>Abstract</sld:Abstract>
                    <sld:MinScaleDenominator>203445</sld:MinScaleDenominator>
					<sld:MaxScaleDenominator>406891</sld:MaxScaleDenominator>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>5.5</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFF0AB</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>4.5</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                </sld:Rule>
				<sld:Rule>
                    <sld:Name>role05</sld:Name>
                    <sld:Title>highway</sld:Title>
                    <sld:Abstract>Abstract</sld:Abstract>
                    <sld:MinScaleDenominator>101722</sld:MinScaleDenominator>
					<sld:MaxScaleDenominator>203445</sld:MaxScaleDenominator>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>7.0</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFF0AB</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>6.0</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                </sld:Rule>
				<sld:Rule>
                    <sld:Name>role06</sld:Name>
                    <sld:Title>highway</sld:Title>
                    <sld:Abstract>Abstract</sld:Abstract>
                    <sld:MinScaleDenominator>50861</sld:MinScaleDenominator>
					<sld:MaxScaleDenominator>101722</sld:MaxScaleDenominator>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>8.5</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFF0AB</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>7.5</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                </sld:Rule>
				<sld:Rule>
                    <sld:Name>role07</sld:Name>
                    <sld:Title>highway</sld:Title>
                    <sld:Abstract>Abstract</sld:Abstract>
                    <sld:MinScaleDenominator>25430</sld:MinScaleDenominator>
					<sld:MaxScaleDenominator>50861</sld:MaxScaleDenominator>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>10</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFF0AB</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>9</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                </sld:Rule>
				<sld:Rule>
                    <sld:Name>role08</sld:Name>
                    <sld:Title>highway</sld:Title>
                    <sld:Abstract>Abstract</sld:Abstract>
                    <sld:MinScaleDenominator>12715</sld:MinScaleDenominator>
					<sld:MaxScaleDenominator>25430</sld:MaxScaleDenominator>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>11.5</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFF0AB</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>10.5</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                </sld:Rule>
				<sld:Rule>
                    <sld:Name>role09</sld:Name>
                    <sld:Title>highway</sld:Title>
                    <sld:Abstract>Abstract</sld:Abstract>
                    <sld:MinScaleDenominator>6357</sld:MinScaleDenominator>
					<sld:MaxScaleDenominator>12715</sld:MaxScaleDenominator>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>6.0</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFF0AB</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>5.0</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                </sld:Rule>
				<sld:Rule>
                    <sld:Name>role10</sld:Name>
                    <sld:Title>highway</sld:Title>
                    <sld:Abstract>Abstract</sld:Abstract>
                    <sld:MaxScaleDenominator>6357</sld:MaxScaleDenominator>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#af8d26</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>7.5</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFF0AB</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>6.5</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                </sld:Rule>				
			</sld:FeatureTypeStyle>   
		</sld:UserStyle> 
	</sld:UserLayer> 
</sld:StyledLayerDescriptor> 