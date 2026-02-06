<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="i0" />
        <signal name="i1" />
        <signal name="XLXN_8" />
        <signal name="XLXN_11" />
        <signal name="i3" />
        <signal name="i2" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="en" />
        <signal name="o0" />
        <signal name="o1" />
        <signal name="o2" />
        <signal name="o3" />
        <signal name="o4" />
        <signal name="o5" />
        <signal name="o6" />
        <signal name="o7" />
        <signal name="o8" />
        <signal name="o9" />
        <signal name="o10" />
        <signal name="o11" />
        <signal name="o12" />
        <signal name="o13" />
        <signal name="o14" />
        <signal name="o15" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <port polarity="Input" name="i0" />
        <port polarity="Input" name="i1" />
        <port polarity="Input" name="i3" />
        <port polarity="Input" name="i2" />
        <port polarity="Input" name="en" />
        <port polarity="Output" name="o0" />
        <port polarity="Output" name="o1" />
        <port polarity="Output" name="o2" />
        <port polarity="Output" name="o3" />
        <port polarity="Output" name="o4" />
        <port polarity="Output" name="o5" />
        <port polarity="Output" name="o6" />
        <port polarity="Output" name="o7" />
        <port polarity="Output" name="o8" />
        <port polarity="Output" name="o9" />
        <port polarity="Output" name="o10" />
        <port polarity="Output" name="o11" />
        <port polarity="Output" name="o12" />
        <port polarity="Output" name="o13" />
        <port polarity="Output" name="o14" />
        <port polarity="Output" name="o15" />
        <blockdef name="sch_e_2_9_2_1">
            <timestamp>2026-1-17T17:17:25</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
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
        <block symbolname="sch_e_2_9_2_1" name="XLXI_1">
            <blockpin signalname="i0" name="i0" />
            <blockpin signalname="i1" name="i1" />
            <blockpin signalname="XLXN_8" name="en" />
            <blockpin signalname="o0" name="o0" />
            <blockpin signalname="o1" name="o1" />
            <blockpin signalname="o2" name="o2" />
            <blockpin signalname="o3" name="o3" />
        </block>
        <block symbolname="sch_e_2_9_2_1" name="XLXI_2">
            <blockpin signalname="i0" name="i0" />
            <blockpin signalname="i1" name="i1" />
            <blockpin signalname="XLXN_53" name="en" />
            <blockpin signalname="o4" name="o0" />
            <blockpin signalname="o5" name="o1" />
            <blockpin signalname="o6" name="o2" />
            <blockpin signalname="o7" name="o3" />
        </block>
        <block symbolname="sch_e_2_9_2_1" name="XLXI_3">
            <blockpin signalname="i0" name="i0" />
            <blockpin signalname="i1" name="i1" />
            <blockpin signalname="XLXN_52" name="en" />
            <blockpin signalname="o8" name="o0" />
            <blockpin signalname="o9" name="o1" />
            <blockpin signalname="o10" name="o2" />
            <blockpin signalname="o11" name="o3" />
        </block>
        <block symbolname="sch_e_2_9_2_1" name="XLXI_4">
            <blockpin signalname="i0" name="i0" />
            <blockpin signalname="i1" name="i1" />
            <blockpin signalname="XLXN_11" name="en" />
            <blockpin signalname="o12" name="o0" />
            <blockpin signalname="o13" name="o1" />
            <blockpin signalname="o14" name="o2" />
            <blockpin signalname="o15" name="o3" />
        </block>
        <block symbolname="and3" name="XLXI_5">
            <blockpin signalname="en" name="I0" />
            <blockpin signalname="XLXN_19" name="I1" />
            <blockpin signalname="XLXN_18" name="I2" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="i2" name="I" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="i3" name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_11">
            <blockpin signalname="en" name="I0" />
            <blockpin signalname="i3" name="I1" />
            <blockpin signalname="XLXN_18" name="I2" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_12">
            <blockpin signalname="en" name="I0" />
            <blockpin signalname="XLXN_19" name="I1" />
            <blockpin signalname="i2" name="I2" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_13">
            <blockpin signalname="en" name="I0" />
            <blockpin signalname="i3" name="I1" />
            <blockpin signalname="i2" name="I2" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1744" y="1040" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1744" y="1376" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1744" y="1712" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1744" y="2048" name="XLXI_4" orien="R0">
        </instance>
        <branch name="i0">
            <wire x2="1728" y1="816" y2="816" x1="1664" />
            <wire x2="1744" y1="816" y2="816" x1="1728" />
            <wire x2="1728" y1="816" y2="1152" x1="1728" />
            <wire x2="1744" y1="1152" y2="1152" x1="1728" />
            <wire x2="1728" y1="1152" y2="1488" x1="1728" />
            <wire x2="1744" y1="1488" y2="1488" x1="1728" />
            <wire x2="1728" y1="1488" y2="1824" x1="1728" />
            <wire x2="1744" y1="1824" y2="1824" x1="1728" />
        </branch>
        <branch name="i1">
            <wire x2="1712" y1="912" y2="912" x1="1664" />
            <wire x2="1744" y1="912" y2="912" x1="1712" />
            <wire x2="1712" y1="912" y2="1248" x1="1712" />
            <wire x2="1744" y1="1248" y2="1248" x1="1712" />
            <wire x2="1712" y1="1248" y2="1584" x1="1712" />
            <wire x2="1744" y1="1584" y2="1584" x1="1712" />
            <wire x2="1712" y1="1584" y2="1920" x1="1712" />
            <wire x2="1744" y1="1920" y2="1920" x1="1712" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1744" y1="1008" y2="1008" x1="1632" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1744" y1="2016" y2="2016" x1="1632" />
        </branch>
        <instance x="1376" y="1136" name="XLXI_5" orien="R0" />
        <instance x="1280" y="640" name="XLXI_9" orien="R90" />
        <instance x="1120" y="640" name="XLXI_10" orien="R90" />
        <instance x="1376" y="1472" name="XLXI_11" orien="R0" />
        <instance x="1376" y="1808" name="XLXI_12" orien="R0" />
        <instance x="1376" y="2144" name="XLXI_13" orien="R0" />
        <branch name="i3">
            <wire x2="1072" y1="560" y2="624" x1="1072" />
            <wire x2="1152" y1="624" y2="624" x1="1072" />
            <wire x2="1152" y1="624" y2="640" x1="1152" />
            <wire x2="1072" y1="624" y2="1344" x1="1072" />
            <wire x2="1072" y1="1344" y2="2016" x1="1072" />
            <wire x2="1376" y1="2016" y2="2016" x1="1072" />
            <wire x2="1376" y1="1344" y2="1344" x1="1072" />
        </branch>
        <branch name="i2">
            <wire x2="1232" y1="560" y2="624" x1="1232" />
            <wire x2="1312" y1="624" y2="624" x1="1232" />
            <wire x2="1312" y1="624" y2="640" x1="1312" />
            <wire x2="1232" y1="624" y2="1616" x1="1232" />
            <wire x2="1376" y1="1616" y2="1616" x1="1232" />
            <wire x2="1232" y1="1616" y2="1952" x1="1232" />
            <wire x2="1376" y1="1952" y2="1952" x1="1232" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1312" y1="864" y2="944" x1="1312" />
            <wire x2="1376" y1="944" y2="944" x1="1312" />
            <wire x2="1312" y1="944" y2="1280" x1="1312" />
            <wire x2="1376" y1="1280" y2="1280" x1="1312" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1152" y1="864" y2="1008" x1="1152" />
            <wire x2="1376" y1="1008" y2="1008" x1="1152" />
            <wire x2="1152" y1="1008" y2="1680" x1="1152" />
            <wire x2="1376" y1="1680" y2="1680" x1="1152" />
        </branch>
        <branch name="en">
            <wire x2="1360" y1="1072" y2="1072" x1="1040" />
            <wire x2="1376" y1="1072" y2="1072" x1="1360" />
            <wire x2="1360" y1="1072" y2="1408" x1="1360" />
            <wire x2="1376" y1="1408" y2="1408" x1="1360" />
            <wire x2="1360" y1="1408" y2="1744" x1="1360" />
            <wire x2="1376" y1="1744" y2="1744" x1="1360" />
            <wire x2="1360" y1="1744" y2="2080" x1="1360" />
            <wire x2="1376" y1="2080" y2="2080" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1072" name="en" orien="R180" />
        <iomarker fontsize="28" x="1072" y="560" name="i3" orien="R270" />
        <iomarker fontsize="28" x="1232" y="560" name="i2" orien="R270" />
        <branch name="o0">
            <wire x2="2144" y1="816" y2="816" x1="2128" />
            <wire x2="2160" y1="816" y2="816" x1="2144" />
        </branch>
        <branch name="o1">
            <wire x2="2160" y1="880" y2="880" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="880" name="o1" orien="R0" />
        <branch name="o2">
            <wire x2="2160" y1="944" y2="944" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="944" name="o2" orien="R0" />
        <branch name="o3">
            <wire x2="2160" y1="1008" y2="1008" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1008" name="o3" orien="R0" />
        <branch name="o4">
            <wire x2="2144" y1="1152" y2="1152" x1="2128" />
            <wire x2="2160" y1="1152" y2="1152" x1="2144" />
        </branch>
        <branch name="o5">
            <wire x2="2160" y1="1216" y2="1216" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1216" name="o5" orien="R0" />
        <branch name="o6">
            <wire x2="2160" y1="1280" y2="1280" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1280" name="o6" orien="R0" />
        <branch name="o7">
            <wire x2="2160" y1="1344" y2="1344" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1344" name="o7" orien="R0" />
        <branch name="o8">
            <wire x2="2160" y1="1488" y2="1488" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1488" name="o8" orien="R0" />
        <branch name="o9">
            <wire x2="2160" y1="1552" y2="1552" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1552" name="o9" orien="R0" />
        <branch name="o10">
            <wire x2="2160" y1="1616" y2="1616" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1616" name="o10" orien="R0" />
        <branch name="o11">
            <wire x2="2160" y1="1680" y2="1680" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1680" name="o11" orien="R0" />
        <branch name="o12">
            <wire x2="2160" y1="1824" y2="1824" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1824" name="o12" orien="R0" />
        <branch name="o13">
            <wire x2="2160" y1="1888" y2="1888" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1888" name="o13" orien="R0" />
        <branch name="o14">
            <wire x2="2160" y1="1952" y2="1952" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1952" name="o14" orien="R0" />
        <branch name="o15">
            <wire x2="2160" y1="2016" y2="2016" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="2160" y="2016" name="o15" orien="R0" />
        <iomarker fontsize="28" x="1664" y="816" name="i0" orien="R180" />
        <iomarker fontsize="28" x="1664" y="912" name="i1" orien="R180" />
        <iomarker fontsize="28" x="2160" y="816" name="o0" orien="R0" />
        <iomarker fontsize="28" x="2160" y="1152" name="o4" orien="R0" />
        <branch name="XLXN_52">
            <wire x2="1680" y1="1344" y2="1344" x1="1632" />
            <wire x2="1680" y1="1344" y2="1680" x1="1680" />
            <wire x2="1744" y1="1680" y2="1680" x1="1680" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="1664" y1="1680" y2="1680" x1="1632" />
            <wire x2="1664" y1="1680" y2="1744" x1="1664" />
            <wire x2="1696" y1="1744" y2="1744" x1="1664" />
            <wire x2="1696" y1="1344" y2="1744" x1="1696" />
            <wire x2="1744" y1="1344" y2="1344" x1="1696" />
        </branch>
    </sheet>
</drawing>