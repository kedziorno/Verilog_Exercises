<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="i0" />
        <signal name="i1" />
        <signal name="en" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="o0" />
        <signal name="o1" />
        <signal name="o2" />
        <signal name="o3" />
        <port polarity="Input" name="i0" />
        <port polarity="Input" name="i1" />
        <port polarity="Input" name="en" />
        <port polarity="Output" name="o0" />
        <port polarity="Output" name="o1" />
        <port polarity="Output" name="o2" />
        <port polarity="Output" name="o3" />
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="i0" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="i1" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_1">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="en" name="I2" />
            <blockpin signalname="o0" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_2">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="i0" name="I1" />
            <blockpin signalname="en" name="I2" />
            <blockpin signalname="o1" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_3">
            <blockpin signalname="i1" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="en" name="I2" />
            <blockpin signalname="o2" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_4">
            <blockpin signalname="i1" name="I0" />
            <blockpin signalname="i0" name="I1" />
            <blockpin signalname="en" name="I2" />
            <blockpin signalname="o3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="768" y="560" name="XLXI_5" orien="R90" />
        <instance x="928" y="560" name="XLXI_6" orien="R90" />
        <branch name="i0">
            <wire x2="720" y1="480" y2="544" x1="720" />
            <wire x2="720" y1="544" y2="560" x1="720" />
            <wire x2="720" y1="560" y2="880" x1="720" />
            <wire x2="720" y1="880" y2="1200" x1="720" />
            <wire x2="720" y1="1200" y2="1216" x1="720" />
            <wire x2="1120" y1="1216" y2="1216" x1="720" />
            <wire x2="720" y1="1216" y2="1600" x1="720" />
            <wire x2="1120" y1="1600" y2="1600" x1="720" />
            <wire x2="800" y1="544" y2="544" x1="720" />
            <wire x2="800" y1="544" y2="560" x1="800" />
        </branch>
        <branch name="i1">
            <wire x2="880" y1="480" y2="544" x1="880" />
            <wire x2="880" y1="544" y2="560" x1="880" />
            <wire x2="880" y1="560" y2="880" x1="880" />
            <wire x2="880" y1="880" y2="1472" x1="880" />
            <wire x2="1120" y1="1472" y2="1472" x1="880" />
            <wire x2="880" y1="1472" y2="1664" x1="880" />
            <wire x2="1120" y1="1664" y2="1664" x1="880" />
            <wire x2="960" y1="544" y2="544" x1="880" />
            <wire x2="960" y1="544" y2="560" x1="960" />
        </branch>
        <branch name="en">
            <wire x2="1040" y1="480" y2="960" x1="1040" />
            <wire x2="1040" y1="960" y2="1152" x1="1040" />
            <wire x2="1040" y1="1152" y2="1344" x1="1040" />
            <wire x2="1040" y1="1344" y2="1536" x1="1040" />
            <wire x2="1120" y1="1536" y2="1536" x1="1040" />
            <wire x2="1120" y1="1344" y2="1344" x1="1040" />
            <wire x2="1120" y1="1152" y2="1152" x1="1040" />
            <wire x2="1120" y1="960" y2="960" x1="1040" />
        </branch>
        <instance x="1120" y="1152" name="XLXI_1" orien="R0" />
        <instance x="1120" y="1344" name="XLXI_2" orien="R0" />
        <instance x="1120" y="1536" name="XLXI_3" orien="R0" />
        <instance x="1120" y="1728" name="XLXI_4" orien="R0" />
        <iomarker fontsize="28" x="720" y="480" name="i0" orien="R270" />
        <iomarker fontsize="28" x="880" y="480" name="i1" orien="R270" />
        <iomarker fontsize="28" x="1040" y="480" name="en" orien="R270" />
        <branch name="XLXN_5">
            <wire x2="960" y1="784" y2="1024" x1="960" />
            <wire x2="1120" y1="1024" y2="1024" x1="960" />
            <wire x2="960" y1="1024" y2="1280" x1="960" />
            <wire x2="1120" y1="1280" y2="1280" x1="960" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="800" y1="784" y2="1088" x1="800" />
            <wire x2="1120" y1="1088" y2="1088" x1="800" />
            <wire x2="800" y1="1088" y2="1408" x1="800" />
            <wire x2="1120" y1="1408" y2="1408" x1="800" />
        </branch>
        <branch name="o0">
            <wire x2="1408" y1="1024" y2="1024" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1408" y="1024" name="o0" orien="R0" />
        <branch name="o1">
            <wire x2="1408" y1="1216" y2="1216" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1408" y="1216" name="o1" orien="R0" />
        <branch name="o2">
            <wire x2="1408" y1="1408" y2="1408" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1408" y="1408" name="o2" orien="R0" />
        <branch name="o3">
            <wire x2="1408" y1="1600" y2="1600" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1408" y="1600" name="o3" orien="R0" />
    </sheet>
</drawing>