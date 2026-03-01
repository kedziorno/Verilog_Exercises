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
        <instance x="1008" y="672" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1008" y="1008" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1008" y="1344" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1008" y="1680" name="XLXI_4" orien="R0">
        </instance>
        <branch name="i0">
            <wire x2="992" y1="448" y2="448" x1="928" />
            <wire x2="1008" y1="448" y2="448" x1="992" />
            <wire x2="992" y1="448" y2="784" x1="992" />
            <wire x2="1008" y1="784" y2="784" x1="992" />
            <wire x2="992" y1="784" y2="1120" x1="992" />
            <wire x2="1008" y1="1120" y2="1120" x1="992" />
            <wire x2="992" y1="1120" y2="1456" x1="992" />
            <wire x2="1008" y1="1456" y2="1456" x1="992" />
        </branch>
        <branch name="i1">
            <wire x2="976" y1="544" y2="544" x1="928" />
            <wire x2="1008" y1="544" y2="544" x1="976" />
            <wire x2="976" y1="544" y2="880" x1="976" />
            <wire x2="1008" y1="880" y2="880" x1="976" />
            <wire x2="976" y1="880" y2="1216" x1="976" />
            <wire x2="1008" y1="1216" y2="1216" x1="976" />
            <wire x2="976" y1="1216" y2="1552" x1="976" />
            <wire x2="1008" y1="1552" y2="1552" x1="976" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1008" y1="640" y2="640" x1="896" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1008" y1="1648" y2="1648" x1="896" />
        </branch>
        <instance x="640" y="768" name="XLXI_5" orien="R0" />
        <instance x="544" y="272" name="XLXI_9" orien="R90" />
        <instance x="384" y="272" name="XLXI_10" orien="R90" />
        <instance x="640" y="1104" name="XLXI_11" orien="R0" />
        <instance x="640" y="1440" name="XLXI_12" orien="R0" />
        <instance x="640" y="1776" name="XLXI_13" orien="R0" />
        <branch name="i3">
            <wire x2="336" y1="192" y2="256" x1="336" />
            <wire x2="416" y1="256" y2="256" x1="336" />
            <wire x2="416" y1="256" y2="272" x1="416" />
            <wire x2="336" y1="256" y2="976" x1="336" />
            <wire x2="336" y1="976" y2="1648" x1="336" />
            <wire x2="640" y1="1648" y2="1648" x1="336" />
            <wire x2="640" y1="976" y2="976" x1="336" />
        </branch>
        <branch name="i2">
            <wire x2="496" y1="192" y2="256" x1="496" />
            <wire x2="576" y1="256" y2="256" x1="496" />
            <wire x2="576" y1="256" y2="272" x1="576" />
            <wire x2="496" y1="256" y2="1248" x1="496" />
            <wire x2="640" y1="1248" y2="1248" x1="496" />
            <wire x2="496" y1="1248" y2="1584" x1="496" />
            <wire x2="640" y1="1584" y2="1584" x1="496" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="576" y1="496" y2="576" x1="576" />
            <wire x2="640" y1="576" y2="576" x1="576" />
            <wire x2="576" y1="576" y2="912" x1="576" />
            <wire x2="640" y1="912" y2="912" x1="576" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="416" y1="496" y2="640" x1="416" />
            <wire x2="640" y1="640" y2="640" x1="416" />
            <wire x2="416" y1="640" y2="1312" x1="416" />
            <wire x2="640" y1="1312" y2="1312" x1="416" />
        </branch>
        <branch name="en">
            <wire x2="624" y1="704" y2="704" x1="304" />
            <wire x2="640" y1="704" y2="704" x1="624" />
            <wire x2="624" y1="704" y2="1040" x1="624" />
            <wire x2="640" y1="1040" y2="1040" x1="624" />
            <wire x2="624" y1="1040" y2="1376" x1="624" />
            <wire x2="640" y1="1376" y2="1376" x1="624" />
            <wire x2="624" y1="1376" y2="1712" x1="624" />
            <wire x2="640" y1="1712" y2="1712" x1="624" />
        </branch>
        <branch name="o0">
            <wire x2="1408" y1="448" y2="448" x1="1392" />
            <wire x2="1424" y1="448" y2="448" x1="1408" />
        </branch>
        <branch name="o1">
            <wire x2="1424" y1="512" y2="512" x1="1392" />
        </branch>
        <branch name="o2">
            <wire x2="1424" y1="576" y2="576" x1="1392" />
        </branch>
        <branch name="o3">
            <wire x2="1424" y1="640" y2="640" x1="1392" />
        </branch>
        <branch name="o4">
            <wire x2="1408" y1="784" y2="784" x1="1392" />
            <wire x2="1424" y1="784" y2="784" x1="1408" />
        </branch>
        <branch name="o5">
            <wire x2="1424" y1="848" y2="848" x1="1392" />
        </branch>
        <branch name="o6">
            <wire x2="1424" y1="912" y2="912" x1="1392" />
        </branch>
        <branch name="o7">
            <wire x2="1424" y1="976" y2="976" x1="1392" />
        </branch>
        <branch name="o8">
            <wire x2="1424" y1="1120" y2="1120" x1="1392" />
        </branch>
        <branch name="o9">
            <wire x2="1424" y1="1184" y2="1184" x1="1392" />
        </branch>
        <branch name="o10">
            <wire x2="1424" y1="1248" y2="1248" x1="1392" />
        </branch>
        <branch name="o11">
            <wire x2="1424" y1="1312" y2="1312" x1="1392" />
        </branch>
        <branch name="o12">
            <wire x2="1424" y1="1456" y2="1456" x1="1392" />
        </branch>
        <branch name="o13">
            <wire x2="1424" y1="1520" y2="1520" x1="1392" />
        </branch>
        <branch name="o14">
            <wire x2="1424" y1="1584" y2="1584" x1="1392" />
        </branch>
        <branch name="o15">
            <wire x2="1424" y1="1648" y2="1648" x1="1392" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="944" y1="976" y2="976" x1="896" />
            <wire x2="944" y1="976" y2="1312" x1="944" />
            <wire x2="1008" y1="1312" y2="1312" x1="944" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="928" y1="1312" y2="1312" x1="896" />
            <wire x2="928" y1="1312" y2="1376" x1="928" />
            <wire x2="960" y1="1376" y2="1376" x1="928" />
            <wire x2="960" y1="976" y2="1376" x1="960" />
            <wire x2="1008" y1="976" y2="976" x1="960" />
        </branch>
        <iomarker fontsize="28" x="304" y="704" name="en" orien="R180" />
        <iomarker fontsize="28" x="336" y="192" name="i3" orien="R270" />
        <iomarker fontsize="28" x="496" y="192" name="i2" orien="R270" />
        <iomarker fontsize="28" x="1424" y="512" name="o1" orien="R0" />
        <iomarker fontsize="28" x="1424" y="576" name="o2" orien="R0" />
        <iomarker fontsize="28" x="1424" y="640" name="o3" orien="R0" />
        <iomarker fontsize="28" x="1424" y="848" name="o5" orien="R0" />
        <iomarker fontsize="28" x="1424" y="912" name="o6" orien="R0" />
        <iomarker fontsize="28" x="1424" y="976" name="o7" orien="R0" />
        <iomarker fontsize="28" x="1424" y="1120" name="o8" orien="R0" />
        <iomarker fontsize="28" x="1424" y="1184" name="o9" orien="R0" />
        <iomarker fontsize="28" x="1424" y="1248" name="o10" orien="R0" />
        <iomarker fontsize="28" x="1424" y="1312" name="o11" orien="R0" />
        <iomarker fontsize="28" x="1424" y="1456" name="o12" orien="R0" />
        <iomarker fontsize="28" x="1424" y="1520" name="o13" orien="R0" />
        <iomarker fontsize="28" x="1424" y="1584" name="o14" orien="R0" />
        <iomarker fontsize="28" x="1424" y="1648" name="o15" orien="R0" />
        <iomarker fontsize="28" x="928" y="448" name="i0" orien="R180" />
        <iomarker fontsize="28" x="928" y="544" name="i1" orien="R180" />
        <iomarker fontsize="28" x="1424" y="448" name="o0" orien="R0" />
        <iomarker fontsize="28" x="1424" y="784" name="o4" orien="R0" />
        <rect width="976" x="1712" y="516" height="976" />
        <text style="fontsize:64;fontname:Courier New" x="1732" y="740"> 1 0000 0000000000000001</text>
        <text style="fontsize:64;fontname:Courier New" x="1732" y="788"> 1 0001 0000000000000010</text>
        <text style="fontsize:64;fontname:Courier New" x="1732" y="836"> 1 0010 0000000000000100</text>
        <text style="fontsize:64;fontname:Courier New" x="1732" y="884"> 1 0011 0000000000001000</text>
        <text style="fontsize:64;fontname:Courier New" x="1732" y="932"> 1 0100 0000000000010000</text>
        <text style="fontsize:64;fontname:Courier New" x="1732" y="980"> 1 0101 0000000000100000</text>
        <text style="fontsize:64;fontname:Courier New" x="1732" y="1028"> 1 0110 0000000001000000</text>
        <text style="fontsize:64;fontname:Courier New" x="1732" y="1076"> 1 0111 0000000010000000</text>
        <text style="fontsize:64;fontname:Courier New" x="1732" y="1124"> 1 1000 0000000100000000</text>
        <text style="fontsize:64;fontname:Courier New" x="1732" y="1172"> 1 1001 0000001000000000</text>
        <text style="fontsize:64;fontname:Courier New" x="1732" y="1220"> 1 1010 0000010000000000</text>
        <text style="fontsize:64;fontname:Courier New" x="1732" y="1268"> 1 1011 0000100000000000</text>
        <text style="fontsize:64;fontname:Courier New" x="1732" y="1316"> 1 1100 0001000000000000</text>
        <text style="fontsize:64;fontname:Courier New" x="1732" y="1364"> 1 1101 0010000000000000</text>
        <text style="fontsize:64;fontname:Courier New" x="1732" y="1412"> 1 1110 0100000000000000</text>
        <text style="fontsize:64;fontname:Courier New" x="1732" y="1460"> 1 1111 1000000000000000</text>
        <text style="fontsize:64;fontname:Courier New" x="1732" y="700">-------------------------</text>
        <text style="fontsize:64;fontname:Courier New" x="1736" y="664">en    i                o</text>
        <text style="fontsize:64;fontname:Courier New" x="1744" y="556">EN DECODER 4-16</text>
    </sheet>
</drawing>