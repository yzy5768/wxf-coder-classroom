<?xml version="1.0" encoding="UTF-8"?> 
<sld:StyledLayerDescriptor xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0"> 
	<sld:UserLayer> 
		<sld:UserStyle> 
			<sld:Name>line_nationalHighway</sld:Name> 
			<sld:Title>高架引路</sld:Title> 
			<sld:Abstract></sld:Abstract> 
			<sld:FeatureTypeStyle> 
				<sld:Rule>
                    <sld:Name>role08</sld:Name>
                    <sld:Title>highway</sld:Title>
                    <sld:Abstract>Abstract</sld:Abstract>
                    <sld:MinScaleDenominator>12715</sld:MinScaleDenominator>
					<sld:MaxScaleDenominator>25430</sld:MaxScaleDenominator>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFF0C0</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>2.5</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFFEC5</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>1.5</ogc:Literal>
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
                                <ogc:Literal>#FFF0C0</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>3.0</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                    <sld:LineSymbolizer>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">
                                <ogc:Literal>#FFFEC5</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>2.0</ogc:Literal>
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
                                <ogc:Literal>#FFFEC5</ogc:Literal>
                            </sld:CssParameter>                           
                            <sld:CssParameter name="stroke-width">
                                <ogc:Literal>5.5</ogc:Literal>
                            </sld:CssParameter>
                        </sld:Stroke>
                    </sld:LineSymbolizer>
                </sld:Rule>				
			</sld:FeatureTypeStyle>   
		</sld:UserStyle> 
	</sld:UserLayer> 
</sld:StyledLayerDescriptor> 