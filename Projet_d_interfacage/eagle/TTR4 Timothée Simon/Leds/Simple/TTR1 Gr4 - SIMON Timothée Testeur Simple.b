<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.05" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.025" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="yes" active="yes"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="yes"/>
<layer number="17" name="Pads" color="2" fill="1" visible="yes" active="yes"/>
<layer number="18" name="Vias" color="2" fill="1" visible="yes" active="yes"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="yes"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="yes" active="yes"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="yes"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="yes" active="yes"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="yes" active="yes"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="yes" active="yes"/>
<layer number="25" name="tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="26" name="bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="27" name="tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="28" name="bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="yes"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="yes"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="yes"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="yes"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="yes"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="yes"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="yes"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="yes"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="yes"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="yes"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="yes" active="yes"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="yes" active="yes"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="yes" active="yes"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="yes" active="yes"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="yes" active="yes"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="yes"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="yes"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="yes"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="yes"/>
<layer number="48" name="Document" color="7" fill="1" visible="yes" active="yes"/>
<layer number="49" name="Reference" color="7" fill="1" visible="yes" active="yes"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="no" active="no"/>
<layer number="92" name="Busses" color="1" fill="1" visible="no" active="no"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="no"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="no" active="no"/>
<layer number="95" name="Names" color="7" fill="1" visible="no" active="no"/>
<layer number="96" name="Values" color="7" fill="1" visible="no" active="no"/>
<layer number="97" name="Info" color="7" fill="1" visible="no" active="no"/>
<layer number="98" name="Guide" color="6" fill="1" visible="no" active="no"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="no" active="no"/>
</layers>
<board>
<plain>
<wire x1="16.51" y1="0" x2="97.46" y2="0" width="0" layer="20"/>
<wire x1="97.46" y1="0" x2="97.46" y2="24.12" width="0" layer="20"/>
<wire x1="97.46" y1="24.12" x2="16.51" y2="24.12" width="0" layer="20"/>
<wire x1="16.51" y1="24.12" x2="16.51" y2="0" width="0" layer="20"/>
<text x="17.78" y="1.27" size="3.81" layer="1">TIMOTHEE SIMON</text>
<text x="45.72" y="17.78" size="3.81" layer="1">TTR1 Gr4</text>
<dimension x1="16.51" y1="24.12" x2="16.51" y2="0" x3="11.43" y3="12.06" textsize="1.778" layer="20"/>
<dimension x1="97.46" y1="24.12" x2="16.51" y2="24.12" x3="56.985" y3="31.75" textsize="1.778" layer="20"/>
<text x="77.47" y="0" size="1.778" layer="1">1952mm²</text>
</plain>
<libraries>
<library name="led">
<description>&lt;b&gt;LEDs&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;br&gt;
Extended by Federico Battaglin &lt;author&gt;&amp;lt;federico.rd@fdpinternational.com&amp;gt;&lt;/author&gt; with DUOLED</description>
<packages>
<package name="LED5MM">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, round</description>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.254" layer="21" curve="-286.260205"/>
<wire x1="-1.143" y1="0" x2="0" y2="1.143" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.143" x2="1.143" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-1.651" y1="0" x2="0" y2="1.651" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-1.651" x2="1.651" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="-2.159" y1="0" x2="0" y2="2.159" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-2.159" x2="2.159" y2="0" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" diameter="2.2"/>
<pad name="K" x="1.27" y="0" drill="0.8128" diameter="2.2"/>
<text x="3.175" y="0.5334" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.2004" y="-1.8034" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
</library>
<library name="diode">
<description>&lt;b&gt;Diodes&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Motorola : www.onsemi.com
&lt;li&gt;Fairchild : www.fairchildsemi.com
&lt;li&gt;Philips : www.semiconductors.com
&lt;li&gt;Vishay : www.vishay.de
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DO41-10">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
diameter 2.54 mm, horizontal, grid 10.16 mm</description>
<wire x1="2.032" y1="-1.27" x2="-2.032" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-1.27" x2="2.032" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="1.27" x2="2.032" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="1.27" x2="-2.032" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.762" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.762" layer="51"/>
<wire x1="-0.635" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.635" x2="1.016" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<pad name="A" x="5.08" y="0" drill="0.8" diameter="2.2"/>
<pad name="C" x="-5.08" y="0" drill="0.8" diameter="2.2"/>
<text x="-2.032" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.27" x2="-1.143" y2="1.27" layer="21"/>
<rectangle x1="2.032" y1="-0.381" x2="3.937" y2="0.381" layer="21"/>
<rectangle x1="-3.937" y1="-0.381" x2="-2.032" y2="0.381" layer="21"/>
</package>
</packages>
</library>
<library name="con-tycoelectronics">
<description>&lt;b&gt;Tyco Electronics Connector&lt;/b&gt;&lt;p&gt;
http://catalog.tycoelectronics.com&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="RJ45-NO-SHIELD">
<description>&lt;b&gt;RJ45 Low Profile&lt;/b&gt; No Shield&lt;p&gt;
For all RJ45 N and Z Series Models&lt;br&gt;
Source: www.tycoelectronics.com .. ENG_DS_1654001_1099_RJ_L_0507.pdf</description>
<wire x1="-7.527" y1="10.819" x2="7.527" y2="10.819" width="0.2032" layer="21"/>
<wire x1="8.4455" y1="-5.5118" x2="-8.4455" y2="-5.5118" width="0.01" layer="20"/>
<wire x1="7.527" y1="-7.782" x2="-7.527" y2="-7.782" width="0.2032" layer="21"/>
<wire x1="-7.527" y1="-7.782" x2="-7.527" y2="10.819" width="0.2032" layer="21"/>
<wire x1="7.527" y1="10.819" x2="7.527" y2="-7.782" width="0.2032" layer="21"/>
<pad name="4" x="-0.635" y="8.89" drill="0.8" diameter="2.2"/>
<pad name="3" x="-1.905" y="6.35" drill="0.8" diameter="2.2"/>
<pad name="2" x="-3.175" y="8.89" drill="0.8" diameter="2.2"/>
<pad name="5" x="0.635" y="6.35" drill="0.8" diameter="2.2"/>
<pad name="1" x="-4.445" y="6.35" drill="0.8" diameter="2.2"/>
<pad name="6" x="1.905" y="8.89" drill="0.8" diameter="2.2"/>
<pad name="7" x="3.175" y="6.35" drill="0.8" diameter="2.2"/>
<pad name="8" x="4.445" y="8.89" drill="0.8" diameter="2.2"/>
<text x="-9.525" y="-0.635" size="1.778" layer="25" rot="R90">&gt;NAME</text>
<text x="-5.715" y="2.54" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="7.6" y1="-5.485" x2="8.875" y2="-4.342" layer="21"/>
<rectangle x1="-8.875" y1="-5.485" x2="-7.625" y2="-4.342" layer="21"/>
<hole x="-5.715" y="0" drill="3.2512"/>
<hole x="5.715" y="0" drill="3.2512"/>
</package>
</packages>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="2" drill="0.8">
<clearance class="0" value="0.2"/>
</class>
</classes>
<designrules name="default">
<description language="de">&lt;b&gt;EAGLE Design Rules&lt;/b&gt;
&lt;p&gt;
Die Standard-Design-Rules sind so gewählt, dass sie für 
die meisten Anwendungen passen. Sollte ihre Platine 
besondere Anforderungen haben, treffen Sie die erforderlichen
Einstellungen hier und speichern die Design Rules unter 
einem neuen Namen ab.</description>
<description language="en">&lt;b&gt;EAGLE Design Rules&lt;/b&gt;
&lt;p&gt;
The default Design Rules have been set to cover
a wide range of applications. Your particular design
may have different requirements, so please make the
necessary adjustments and save your customized
design rules under a new name.</description>
<param name="layerSetup" value="(1*16)"/>
<param name="mtCopper" value="0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm 0.035mm"/>
<param name="mtIsolate" value="1.5mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm 0.15mm 0.2mm"/>
<param name="mdWireWire" value="8mil"/>
<param name="mdWirePad" value="8mil"/>
<param name="mdWireVia" value="8mil"/>
<param name="mdPadPad" value="8mil"/>
<param name="mdPadVia" value="8mil"/>
<param name="mdViaVia" value="8mil"/>
<param name="mdSmdPad" value="8mil"/>
<param name="mdSmdVia" value="8mil"/>
<param name="mdSmdSmd" value="8mil"/>
<param name="mdViaViaSameLayer" value="8mil"/>
<param name="mnLayersViaInSmd" value="2"/>
<param name="mdCopperDimension" value="40mil"/>
<param name="mdDrill" value="8mil"/>
<param name="mdSmdStop" value="0mil"/>
<param name="msWidth" value="10mil"/>
<param name="msDrill" value="24mil"/>
<param name="msMicroVia" value="9.99mm"/>
<param name="msBlindViaRatio" value="0.5"/>
<param name="rvPadTop" value="0.25"/>
<param name="rvPadInner" value="0.25"/>
<param name="rvPadBottom" value="0.25"/>
<param name="rvViaOuter" value="0.25"/>
<param name="rvViaInner" value="0.25"/>
<param name="rvMicroViaOuter" value="0.25"/>
<param name="rvMicroViaInner" value="0.25"/>
<param name="rlMinPadTop" value="10mil"/>
<param name="rlMaxPadTop" value="20mil"/>
<param name="rlMinPadInner" value="10mil"/>
<param name="rlMaxPadInner" value="20mil"/>
<param name="rlMinPadBottom" value="10mil"/>
<param name="rlMaxPadBottom" value="20mil"/>
<param name="rlMinViaOuter" value="8mil"/>
<param name="rlMaxViaOuter" value="20mil"/>
<param name="rlMinViaInner" value="8mil"/>
<param name="rlMaxViaInner" value="20mil"/>
<param name="rlMinMicroViaOuter" value="4mil"/>
<param name="rlMaxMicroViaOuter" value="20mil"/>
<param name="rlMinMicroViaInner" value="4mil"/>
<param name="rlMaxMicroViaInner" value="20mil"/>
<param name="psTop" value="-1"/>
<param name="psBottom" value="-1"/>
<param name="psFirst" value="-1"/>
<param name="psElongationLong" value="100"/>
<param name="psElongationOffset" value="100"/>
<param name="mvStopFrame" value="1"/>
<param name="mvCreamFrame" value="0"/>
<param name="mlMinStopFrame" value="4mil"/>
<param name="mlMaxStopFrame" value="4mil"/>
<param name="mlMinCreamFrame" value="0mil"/>
<param name="mlMaxCreamFrame" value="0mil"/>
<param name="mlViaStopLimit" value="0mil"/>
<param name="srRoundness" value="0"/>
<param name="srMinRoundness" value="0mil"/>
<param name="srMaxRoundness" value="0mil"/>
<param name="slThermalIsolate" value="10mil"/>
<param name="slThermalsForVias" value="0"/>
<param name="dpMaxLengthDifference" value="10mm"/>
<param name="dpGapFactor" value="2.5"/>
<param name="checkGrid" value="0"/>
<param name="checkAngle" value="0"/>
<param name="checkFont" value="1"/>
<param name="checkRestrict" value="1"/>
<param name="useDiameter" value="13"/>
<param name="maxErrors" value="50"/>
</designrules>
<autorouter>
<pass name="Default">
<param name="RoutingGrid" value="50mil"/>
<param name="AutoGrid" value="1"/>
<param name="Efforts" value="0"/>
<param name="TopRouterVariant" value="1"/>
<param name="tpViaShape" value="round"/>
<param name="PrefDir.1" value="0"/>
<param name="PrefDir.2" value="0"/>
<param name="PrefDir.3" value="0"/>
<param name="PrefDir.4" value="0"/>
<param name="PrefDir.5" value="0"/>
<param name="PrefDir.6" value="0"/>
<param name="PrefDir.7" value="0"/>
<param name="PrefDir.8" value="0"/>
<param name="PrefDir.9" value="0"/>
<param name="PrefDir.10" value="0"/>
<param name="PrefDir.11" value="0"/>
<param name="PrefDir.12" value="0"/>
<param name="PrefDir.13" value="0"/>
<param name="PrefDir.14" value="0"/>
<param name="PrefDir.15" value="0"/>
<param name="PrefDir.16" value="a"/>
<param name="cfVia" value="8"/>
<param name="cfNonPref" value="5"/>
<param name="cfChangeDir" value="2"/>
<param name="cfOrthStep" value="2"/>
<param name="cfDiagStep" value="3"/>
<param name="cfExtdStep" value="0"/>
<param name="cfBonusStep" value="1"/>
<param name="cfMalusStep" value="1"/>
<param name="cfPadImpact" value="4"/>
<param name="cfSmdImpact" value="4"/>
<param name="cfBusImpact" value="0"/>
<param name="cfHugging" value="3"/>
<param name="cfAvoid" value="4"/>
<param name="cfPolygon" value="10"/>
<param name="cfBase.1" value="0"/>
<param name="cfBase.2" value="1"/>
<param name="cfBase.3" value="1"/>
<param name="cfBase.4" value="1"/>
<param name="cfBase.5" value="1"/>
<param name="cfBase.6" value="1"/>
<param name="cfBase.7" value="1"/>
<param name="cfBase.8" value="1"/>
<param name="cfBase.9" value="1"/>
<param name="cfBase.10" value="1"/>
<param name="cfBase.11" value="1"/>
<param name="cfBase.12" value="1"/>
<param name="cfBase.13" value="1"/>
<param name="cfBase.14" value="1"/>
<param name="cfBase.15" value="1"/>
<param name="cfBase.16" value="0"/>
<param name="mnVias" value="20"/>
<param name="mnSegments" value="9999"/>
<param name="mnExtdSteps" value="9999"/>
<param name="mnRipupLevel" value="10"/>
<param name="mnRipupSteps" value="100"/>
<param name="mnRipupTotal" value="100"/>
</pass>
<pass name="Follow-me" refer="Default" active="yes">
</pass>
<pass name="Busses" refer="Default" active="yes">
<param name="cfNonPref" value="4"/>
<param name="cfBusImpact" value="4"/>
<param name="cfHugging" value="0"/>
<param name="mnVias" value="0"/>
</pass>
<pass name="Route" refer="Default" active="yes">
</pass>
<pass name="Optimize1" refer="Default" active="yes">
<param name="cfVia" value="99"/>
<param name="cfExtdStep" value="10"/>
<param name="cfHugging" value="1"/>
<param name="mnExtdSteps" value="1"/>
<param name="mnRipupLevel" value="0"/>
</pass>
<pass name="Optimize2" refer="Optimize1" active="yes">
<param name="cfNonPref" value="0"/>
<param name="cfChangeDir" value="6"/>
<param name="cfExtdStep" value="0"/>
<param name="cfBonusStep" value="2"/>
<param name="cfMalusStep" value="2"/>
<param name="cfPadImpact" value="2"/>
<param name="cfSmdImpact" value="2"/>
<param name="cfHugging" value="0"/>
</pass>
<pass name="Optimize3" refer="Optimize2" active="yes">
<param name="cfChangeDir" value="8"/>
<param name="cfPadImpact" value="0"/>
<param name="cfSmdImpact" value="0"/>
</pass>
<pass name="Optimize4" refer="Optimize3" active="yes">
<param name="cfChangeDir" value="25"/>
</pass>
</autorouter>
<elements>
<element name="D12" library="led" package="LED5MM" value="" x="20.32" y="21.59" rot="R90"/>
<element name="D13" library="led" package="LED5MM" value="" x="27.94" y="21.59" rot="R90"/>
<element name="D14" library="led" package="LED5MM" value="" x="35.56" y="21.59" rot="R90"/>
<element name="D15" library="led" package="LED5MM" value="" x="43.18" y="21.59" rot="R90"/>
<element name="D16" library="led" package="LED5MM" value="" x="71.12" y="21.59" rot="R90"/>
<element name="D17" library="led" package="LED5MM" value="" x="78.74" y="21.59" rot="R90"/>
<element name="D18" library="led" package="LED5MM" value="" x="86.36" y="21.59" rot="R90"/>
<element name="D19" library="led" package="LED5MM" value="" x="93.98" y="21.59" rot="R90"/>
<element name="D28" library="diode" package="DO41-10" value="1N4004" x="25.4" y="8.89" rot="R90"/>
<element name="D29" library="diode" package="DO41-10" value="1N4004" x="33.02" y="11.43" rot="R90"/>
<element name="D30" library="diode" package="DO41-10" value="1N4004" x="39.37" y="13.97" rot="R90"/>
<element name="D31" library="diode" package="DO41-10" value="1N4004" x="46.99" y="13.97" rot="R90"/>
<element name="D32" library="diode" package="DO41-10" value="1N4004" x="74.93" y="13.97" rot="R90"/>
<element name="D33" library="diode" package="DO41-10" value="1N4004" x="83.82" y="15.24"/>
<element name="D34" library="diode" package="DO41-10" value="1N4004" x="83.82" y="8.89" rot="R180"/>
<element name="D35" library="diode" package="DO41-10" value="1N4004" x="92.71" y="6.35" rot="R90"/>
<element name="X1" library="con-tycoelectronics" package="RJ45-NO-SHIELD" value="RJ45-6L-B" x="57.15" y="5.08">
<attribute name="MF" value="" x="57.15" y="5.08" size="1.778" layer="27" display="off"/>
<attribute name="MPN" value="RJ45-6L-B" x="57.15" y="5.08" size="1.778" layer="27" display="off"/>
<attribute name="OC_NEWARK" value="16R6090" x="57.15" y="5.08" size="1.778" layer="27" display="off"/>
<attribute name="OC_FARNELL" value="unknown" x="57.15" y="5.08" size="1.778" layer="27" display="off"/>
</element>
</elements>
<signals>
<signal name="N$1">
<contactref element="D28" pad="A"/>
<contactref element="D12" pad="K"/>
<contactref element="D30" pad="A"/>
<contactref element="D14" pad="K"/>
<contactref element="D31" pad="A"/>
<contactref element="D15" pad="K"/>
<contactref element="D32" pad="A"/>
<contactref element="D16" pad="K"/>
<contactref element="D17" pad="K"/>
<contactref element="D34" pad="A"/>
<contactref element="D18" pad="K"/>
<contactref element="D35" pad="A"/>
<contactref element="D19" pad="K"/>
<contactref element="D33" pad="A"/>
<contactref element="D13" pad="K"/>
<contactref element="D29" pad="A"/>
<wire x1="20.32" y1="22.86" x2="25.4" y2="22.86" width="2" layer="16"/>
<wire x1="27.94" y1="22.86" x2="25.4" y2="22.86" width="2" layer="16"/>
<wire x1="25.4" y1="22.86" x2="25.4" y2="13.97" width="2" layer="16"/>
<wire x1="27.94" y1="22.86" x2="33.02" y2="22.86" width="2" layer="16"/>
<wire x1="35.56" y1="22.86" x2="33.02" y2="22.86" width="2" layer="16"/>
<wire x1="33.02" y1="22.86" x2="33.02" y2="16.51" width="2" layer="16"/>
<wire x1="35.56" y1="22.86" x2="39.37" y2="22.86" width="2" layer="16"/>
<wire x1="39.37" y1="22.86" x2="43.18" y2="22.86" width="2" layer="16"/>
<wire x1="39.37" y1="19.05" x2="39.37" y2="22.86" width="2" layer="16"/>
<wire x1="43.18" y1="22.86" x2="46.99" y2="22.86" width="2" layer="16"/>
<wire x1="46.99" y1="19.05" x2="46.99" y2="22.86" width="2" layer="16"/>
<wire x1="46.99" y1="22.86" x2="71.12" y2="22.86" width="2" layer="16"/>
<wire x1="78.74" y1="22.86" x2="74.93" y2="22.86" width="2" layer="16"/>
<wire x1="74.93" y1="22.86" x2="71.12" y2="22.86" width="2" layer="16"/>
<wire x1="74.93" y1="19.05" x2="74.93" y2="22.86" width="2" layer="16"/>
<wire x1="78.74" y1="22.86" x2="82.55" y2="22.86" width="2" layer="16"/>
<wire x1="82.55" y1="22.86" x2="86.36" y2="22.86" width="2" layer="16"/>
<wire x1="78.74" y1="8.89" x2="82.55" y2="8.89" width="2" layer="16"/>
<wire x1="82.55" y1="8.89" x2="82.55" y2="22.86" width="2" layer="16"/>
<wire x1="86.36" y1="22.86" x2="93.98" y2="22.86" width="2" layer="16"/>
<wire x1="92.71" y1="11.43" x2="92.71" y2="15.24" width="2" layer="16"/>
<wire x1="92.71" y1="15.24" x2="90.17" y2="15.24" width="2" layer="16"/>
<wire x1="90.17" y1="15.24" x2="88.9" y2="15.24" width="2" layer="16"/>
<wire x1="86.36" y1="22.86" x2="90.17" y2="22.86" width="2" layer="16"/>
<wire x1="90.17" y1="22.86" x2="90.17" y2="15.24" width="2" layer="16"/>
</signal>
<signal name="N$3">
<contactref element="X1" pad="2"/>
<contactref element="D29" pad="C"/>
<contactref element="D13" pad="A"/>
<wire x1="33.02" y1="6.35" x2="27.94" y2="6.35" width="2" layer="16"/>
<wire x1="27.94" y1="6.35" x2="27.94" y2="20.32" width="2" layer="16"/>
<wire x1="33.02" y1="6.35" x2="49.53" y2="6.35" width="2" layer="16"/>
<wire x1="49.53" y1="6.35" x2="49.53" y2="13.97" width="2" layer="16"/>
<wire x1="49.53" y1="13.97" x2="53.975" y2="13.97" width="2" layer="16"/>
</signal>
<signal name="N$5">
<contactref element="X1" pad="3"/>
<contactref element="D14" pad="A"/>
<contactref element="D30" pad="C"/>
<wire x1="35.56" y1="20.32" x2="35.56" y2="8.89" width="2" layer="16"/>
<wire x1="39.37" y1="8.89" x2="35.56" y2="8.89" width="2" layer="16"/>
<via x="35.56" y="8.89" extent="1-16" drill="0.8" diameter="2.2"/>
<wire x1="35.56" y1="8.89" x2="35.56" y2="1.27" width="0.2" layer="1"/>
<wire x1="55.245" y1="1.27" x2="55.245" y2="11.43" width="2" layer="16"/>
<wire x1="55.245" y1="1.27" x2="35.56" y2="1.27" width="2" layer="16"/>
</signal>
<signal name="N$6">
<contactref element="D31" pad="C"/>
<contactref element="D15" pad="A"/>
<contactref element="X1" pad="4"/>
<wire x1="56.515" y1="16.51" x2="56.515" y2="13.97" width="2" layer="16"/>
<wire x1="46.99" y1="8.89" x2="46.99" y2="16.51" width="2" layer="16"/>
<wire x1="46.99" y1="16.51" x2="56.515" y2="16.51" width="2" layer="16"/>
<wire x1="43.18" y1="20.32" x2="43.18" y2="8.89" width="2" layer="16"/>
<wire x1="43.18" y1="8.89" x2="46.99" y2="8.89" width="2" layer="16"/>
</signal>
<signal name="N$7">
<contactref element="X1" pad="5"/>
<contactref element="D32" pad="C"/>
<contactref element="D16" pad="A"/>
<via x="71.12" y="16.51" extent="1-16" drill="0.8" diameter="2.2"/>
<via x="71.12" y="11.43" extent="1-16" drill="0.8" diameter="2.2"/>
<wire x1="71.12" y1="16.51" x2="71.12" y2="11.43" width="0.2" layer="1"/>
<wire x1="71.12" y1="16.51" x2="71.12" y2="20.32" width="2" layer="16"/>
<wire x1="74.93" y1="8.89" x2="71.12" y2="8.89" width="2" layer="16"/>
<wire x1="71.12" y1="11.43" x2="71.12" y2="8.89" width="2" layer="16"/>
<via x="71.12" y="8.89" extent="1-16" drill="0.8" diameter="2.2"/>
<wire x1="71.12" y1="8.89" x2="71.12" y2="1.27" width="0.2" layer="1"/>
<via x="71.12" y="1.27" extent="1-16" drill="0.8" diameter="2.2"/>
<wire x1="71.12" y1="1.27" x2="57.785" y2="1.27" width="2" layer="16"/>
<wire x1="57.785" y1="1.27" x2="57.785" y2="11.43" width="2" layer="16"/>
</signal>
<signal name="N$8">
<contactref element="X1" pad="6"/>
<contactref element="D33" pad="C"/>
<contactref element="D17" pad="A"/>
<wire x1="66.04" y1="13.97" x2="66.04" y2="16.51" width="2" layer="16"/>
<wire x1="66.04" y1="16.51" x2="59.055" y2="16.51" width="2" layer="16"/>
<wire x1="59.055" y1="16.51" x2="59.055" y2="13.97" width="2" layer="16"/>
<wire x1="78.74" y1="20.32" x2="78.74" y2="15.24" width="2" layer="16"/>
<wire x1="66.04" y1="13.97" x2="78.74" y2="13.97" width="2" layer="16"/>
<wire x1="78.74" y1="13.97" x2="78.74" y2="15.24" width="2" layer="16"/>
</signal>
<signal name="N$9">
<contactref element="X1" pad="7"/>
<contactref element="D34" pad="C"/>
<contactref element="D18" pad="A"/>
<via x="80.01" y="3.81" extent="1-16" drill="0.8" diameter="2.2"/>
<wire x1="80.01" y1="3.81" x2="74.93" y2="3.81" width="0.2" layer="1"/>
<via x="74.93" y="3.81" extent="1-16" drill="0.8" diameter="2.2"/>
<wire x1="74.93" y1="3.81" x2="60.325" y2="3.81" width="2" layer="16"/>
<wire x1="60.325" y1="3.81" x2="60.325" y2="11.43" width="2" layer="16"/>
<wire x1="86.36" y1="20.32" x2="86.36" y2="8.89" width="2" layer="16"/>
<wire x1="86.36" y1="8.89" x2="88.9" y2="8.89" width="2" layer="16"/>
<wire x1="88.9" y1="8.89" x2="88.9" y2="3.81" width="2" layer="16"/>
<wire x1="88.9" y1="3.81" x2="80.01" y2="3.81" width="2" layer="16"/>
</signal>
<signal name="N$10">
<contactref element="D35" pad="C"/>
<contactref element="D19" pad="A"/>
<contactref element="X1" pad="8"/>
<wire x1="92.71" y1="1.27" x2="95.25" y2="1.27" width="2" layer="16"/>
<wire x1="93.98" y1="20.32" x2="95.25" y2="20.32" width="2" layer="16"/>
<wire x1="95.25" y1="20.32" x2="95.25" y2="1.27" width="2" layer="16"/>
<wire x1="61.595" y1="13.97" x2="63.5" y2="13.97" width="2" layer="16"/>
<wire x1="63.5" y1="13.97" x2="63.5" y2="11.43" width="2" layer="16"/>
<wire x1="63.5" y1="11.43" x2="92.71" y2="1.27" width="0" layer="19" extent="1-16"/>
</signal>
<signal name="N$2">
<contactref element="D28" pad="C"/>
<contactref element="D12" pad="A"/>
<contactref element="X1" pad="1"/>
<wire x1="20.32" y1="20.32" x2="20.32" y2="3.81" width="2" layer="16"/>
<wire x1="20.32" y1="3.81" x2="25.4" y2="3.81" width="2" layer="16"/>
<wire x1="25.4" y1="3.81" x2="52.705" y2="3.81" width="2" layer="16"/>
<wire x1="52.705" y1="3.81" x2="52.705" y2="11.43" width="2" layer="16"/>
</signal>
<signal name="N$4">
<via x="35.56" y="1.27" extent="1-16" drill="0.8" diameter="2.2"/>
</signal>
<signal name="N$11">
</signal>
<signal name="N$13">
</signal>
<signal name="N$12">
</signal>
<signal name="N$14">
</signal>
<signal name="N$15">
</signal>
<signal name="N$16">
</signal>
<signal name="N$17">
</signal>
<signal name="N$18">
</signal>
<signal name="N$19">
</signal>
</signals>
</board>
</drawing>
</eagle>
