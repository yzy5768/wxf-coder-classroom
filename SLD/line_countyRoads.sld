<?xml version="1.0" encoding="UTF-8"?> 
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0"> 
	<sld:UserLayer> 
		<sld:UserStyle> 
			<sld:Name>line_nationalHighway</sld:Name> 
			<sld:Title>市级道</sld:Title> 
			<sld:Abstract></sld:Abstract> 
			<sld:FeatureTypeStyle> 
				<sld:Rule>
                    <sld:Name>role06</sld:Name>
                    <sld:MinScaleDenominator>50861</sld:MinScaleDenominator>
					<sld:MaxScaleDenominator>101722</sld:MaxScaleDenominator>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#DDDDDD</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>1</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                </sld:Rule>
				<sld:Rule>
                    <sld:Name>role07</sld:Name>
                    <sld:MinScaleDenominator>25430</sld:MinScaleDenominator>
					<sld:MaxScaleDenominator>50861</sld:MaxScaleDenominator>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#DDDDDD</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>2</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                </sld:Rule>
				<sld:Rule>
                    <sld:Name>role08</sld:Name>
                    <sld:MinScaleDenominator>12715</sld:MinScaleDenominator>
					<sld:MaxScaleDenominator>25430</sld:MaxScaleDenominator>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFF0C0</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>4.5</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFFFFF</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>3.5</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                </sld:Rule>
				<sld:Rule>
                    <sld:Name>role09</sld:Name>
                    <sld:MinScaleDenominator>6357</sld:MinScaleDenominator>
					<sld:MaxScaleDenominator>12715</sld:MaxScaleDenominator>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFF0C0</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>6.0</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFFFFF</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>5.0</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                </sld:Rule>
				<Rule>	
					<sld:MaxScaleDenominator>6337</sld:MaxScaleDenominator>
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
				<sld:Rule>
                    <sld:Name>role09</sld:Name>
                    <sld:MinScaleDenominator>3279</sld:MinScaleDenominator>
					<sld:MaxScaleDenominator>6357</sld:MaxScaleDenominator>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFF0C0</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>6.0</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFFFFF</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>5.0</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                </sld:Rule>				
				<sld:Rule>
                    <sld:Name>role10</sld:Name>
                    <sld:MaxScaleDenominator>3279</sld:MaxScaleDenominator>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFF0C0</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>7.5</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFFFFF</ogc:Literal>
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