<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="i2" />
        <signal name="en" />
        <signal name="i1" />
        <signal name="i0" />
        <signal name="XLXN_10" />
        <signal name="o0" />
        <signal name="o1" />
        <signal name="o2" />
        <signal name="o3" />
        <signal name="o4" />
        <signal name="o5" />
        <signal name="o6" />
        <signal name="o7" />
        <port polarity="Input" name="i2" />
        <port polarity="Input" name="en" />
        <port polarity="Input" name="i1" />
        <port polarity="Input" name="i0" />
        <port polarity="Output" name="o0" />
        <port polarity="Output" name="o1" />
        <port polarity="Output" name="o2" />
        <port polarity="Output" name="o3" />
        <port polarity="Output" name="o4" />
        <port polarity="Output" name="o5" />
        <port polarity="Output" name="o6" />
        <port polarity="Output" name="o7" />
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
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <block symbolname="sch_e_2_9_2_1" name="XLXI_1">
            <blockpin signalname="i0" name="i0" />
            <blockpin signalname="i1" name="i1" />
            <blockpin signalname="XLXN_3" name="en" />
            <blockpin signalname="o0" name="o0" />
            <blockpin signalname="o1" name="o1" />
            <blockpin signalname="o2" name="o2" />
            <blockpin signalname="o3" name="o3" />
        </block>
        <block symbolname="sch_e_2_9_2_1" name="XLXI_2">
            <blockpin signalname="i0" name="i0" />
            <blockpin signalname="i1" name="i1" />
            <blockpin signalname="XLXN_4" name="en" />
            <blockpin signalname="o4" name="o0" />
            <blockpin signalname="o5" name="o1" />
            <blockpin signalname="o6" name="o2" />
            <blockpin signalname="o7" name="o3" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="i2" name="I0" />
            <blockpin signalname="en" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_10">
            <blockpin signalname="i2" name="I0" />
            <blockpin signalname="en" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1168" y="944" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1168" y="1312" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="1168" y1="912" y2="912" x1="992" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1168" y1="1280" y2="1280" x1="992" />
        </branch>
        <branch name="i2">
            <wire x2="704" y1="592" y2="944" x1="704" />
            <wire x2="736" y1="944" y2="944" x1="704" />
            <wire x2="704" y1="944" y2="1312" x1="704" />
            <wire x2="736" y1="1312" y2="1312" x1="704" />
        </branch>
        <branch name="i1">
            <wire x2="1152" y1="592" y2="816" x1="1152" />
            <wire x2="1168" y1="816" y2="816" x1="1152" />
            <wire x2="1152" y1="816" y2="1184" x1="1152" />
            <wire x2="1168" y1="1184" y2="1184" x1="1152" />
        </branch>
        <branch name="i0">
            <wire x2="1008" y1="592" y2="720" x1="1008" />
            <wire x2="1008" y1="720" y2="1088" x1="1008" />
            <wire x2="1168" y1="1088" y2="1088" x1="1008" />
            <wire x2="1168" y1="720" y2="720" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="704" y="592" name="i2" orien="R270" />
        <instance x="736" y="1008" name="XLXI_10" orien="R0" />
        <instance x="736" y="1376" name="XLXI_9" orien="R0" />
        <branch name="en">
            <wire x2="672" y1="880" y2="880" x1="656" />
            <wire x2="736" y1="880" y2="880" x1="672" />
            <wire x2="672" y1="880" y2="1248" x1="672" />
            <wire x2="736" y1="1248" y2="1248" x1="672" />
        </branch>
        <iomarker fontsize="28" x="1008" y="592" name="i0" orien="R270" />
        <iomarker fontsize="28" x="1152" y="592" name="i1" orien="R270" />
        <branch name="o0">
            <wire x2="1568" y1="720" y2="720" x1="1552" />
            <wire x2="1584" y1="720" y2="720" x1="1568" />
        </branch>
        <iomarker fontsize="28" x="1584" y="720" name="o0" orien="R0" />
        <branch name="o1">
            <wire x2="1584" y1="784" y2="784" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1584" y="784" name="o1" orien="R0" />
        <branch name="o2">
            <wire x2="1584" y1="848" y2="848" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1584" y="848" name="o2" orien="R0" />
        <branch name="o3">
            <wire x2="1584" y1="912" y2="912" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1584" y="912" name="o3" orien="R0" />
        <branch name="o4">
            <wire x2="1584" y1="1088" y2="1088" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1584" y="1088" name="o4" orien="R0" />
        <branch name="o5">
            <wire x2="1584" y1="1152" y2="1152" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1584" y="1152" name="o5" orien="R0" />
        <branch name="o6">
            <wire x2="1584" y1="1216" y2="1216" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1584" y="1216" name="o6" orien="R0" />
        <branch name="o7">
            <wire x2="1584" y1="1280" y2="1280" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1584" y="1280" name="o7" orien="R0" />
        <iomarker fontsize="28" x="656" y="880" name="en" orien="R180" />
    </sheet>
</drawing>