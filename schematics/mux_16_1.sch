<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_27(2:0)" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="x(15:0)" />
        <signal name="x(15:8)" />
        <signal name="x(7:0)" />
        <signal name="s(3:0)" />
        <signal name="s(2:0)" />
        <signal name="s(3)" />
        <signal name="o" />
        <signal name="XLXN_51" />
        <signal name="en" />
        <port polarity="Input" name="x(15:0)" />
        <port polarity="Input" name="s(3:0)" />
        <port polarity="Output" name="o" />
        <port polarity="Input" name="en" />
        <blockdef name="mux_81">
            <timestamp>2026-3-4T7:58:14</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="m2_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="92" y1="-32" y2="-32" x1="208" />
            <line x2="208" y1="-152" y2="-32" x1="208" />
            <line x2="96" y1="-96" y2="-96" x1="144" />
            <line x2="144" y1="-136" y2="-96" x1="144" />
            <line x2="96" y1="-128" y2="-256" x1="96" />
            <line x2="96" y1="-160" y2="-128" x1="256" />
            <line x2="256" y1="-224" y2="-160" x1="256" />
            <line x2="256" y1="-256" y2="-224" x1="96" />
            <line x2="256" y1="-192" y2="-192" x1="320" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <block symbolname="mux_81" name="XLXI_2">
            <blockpin signalname="x(15:8)" name="x(7:0)" />
            <blockpin signalname="s(2:0)" name="s(2:0)" />
            <blockpin signalname="XLXN_51" name="y" />
        </block>
        <block symbolname="mux_81" name="XLXI_1">
            <blockpin signalname="x(7:0)" name="x(7:0)" />
            <blockpin signalname="s(2:0)" name="s(2:0)" />
            <blockpin signalname="XLXN_39" name="y" />
        </block>
        <block symbolname="m2_1e" name="XLXI_14">
            <blockpin signalname="XLXN_39" name="D0" />
            <blockpin signalname="XLXN_51" name="D1" />
            <blockpin signalname="en" name="E" />
            <blockpin signalname="s(3)" name="S0" />
            <blockpin signalname="o" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1008" y="1280" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1008" y="1504" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_39">
            <wire x2="1392" y1="1184" y2="1216" x1="1392" />
            <wire x2="1488" y1="1216" y2="1216" x1="1392" />
            <wire x2="1488" y1="1216" y2="1376" x1="1488" />
            <wire x2="1504" y1="1376" y2="1376" x1="1488" />
        </branch>
        <branch name="x(15:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1328" type="branch" />
            <wire x2="800" y1="1152" y2="1184" x1="800" />
            <wire x2="800" y1="1184" y2="1328" x1="800" />
            <wire x2="800" y1="1328" y2="1408" x1="800" />
            <wire x2="800" y1="1408" y2="1424" x1="800" />
        </branch>
        <branch name="x(15:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1408" type="branch" />
            <wire x2="928" y1="1408" y2="1408" x1="896" />
            <wire x2="1008" y1="1408" y2="1408" x1="928" />
        </branch>
        <bustap x2="896" y1="1184" y2="1184" x1="800" />
        <branch name="x(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="952" y="1184" type="branch" />
            <wire x2="952" y1="1184" y2="1184" x1="896" />
            <wire x2="1008" y1="1184" y2="1184" x1="952" />
        </branch>
        <bustap x2="896" y1="1408" y2="1408" x1="800" />
        <iomarker fontsize="28" x="800" y="1152" name="x(15:0)" orien="R270" />
        <branch name="s(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="672" y="1360" type="branch" />
            <wire x2="672" y1="1152" y2="1248" x1="672" />
            <wire x2="672" y1="1248" y2="1360" x1="672" />
            <wire x2="672" y1="1360" y2="1472" x1="672" />
            <wire x2="672" y1="1472" y2="1536" x1="672" />
            <wire x2="672" y1="1536" y2="1552" x1="672" />
        </branch>
        <bustap x2="768" y1="1248" y2="1248" x1="672" />
        <branch name="s(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="888" y="1248" type="branch" />
            <wire x2="888" y1="1248" y2="1248" x1="768" />
            <wire x2="1008" y1="1248" y2="1248" x1="888" />
        </branch>
        <bustap x2="768" y1="1472" y2="1472" x1="672" />
        <branch name="s(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="888" y="1472" type="branch" />
            <wire x2="888" y1="1472" y2="1472" x1="768" />
            <wire x2="1008" y1="1472" y2="1472" x1="888" />
        </branch>
        <branch name="s(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1096" y="1536" type="branch" />
            <wire x2="1096" y1="1536" y2="1536" x1="768" />
            <wire x2="1488" y1="1536" y2="1536" x1="1096" />
            <wire x2="1504" y1="1504" y2="1504" x1="1488" />
            <wire x2="1488" y1="1504" y2="1536" x1="1488" />
        </branch>
        <bustap x2="768" y1="1536" y2="1536" x1="672" />
        <iomarker fontsize="28" x="672" y="1152" name="s(3:0)" orien="R270" />
        <branch name="o">
            <wire x2="1872" y1="1408" y2="1408" x1="1824" />
        </branch>
        <instance x="1504" y="1600" name="XLXI_14" orien="R0" />
        <iomarker fontsize="28" x="1872" y="1408" name="o" orien="R0" />
        <branch name="XLXN_51">
            <wire x2="1392" y1="1408" y2="1440" x1="1392" />
            <wire x2="1504" y1="1440" y2="1440" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="624" y="1568" name="en" orien="R180" />
        <branch name="en">
            <wire x2="1504" y1="1568" y2="1568" x1="624" />
        </branch>
    </sheet>
</drawing>