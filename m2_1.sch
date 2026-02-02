<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="s0" />
        <signal name="o" />
        <signal name="d1" />
        <signal name="d0" />
        <port polarity="Input" name="s0" />
        <port polarity="Output" name="o" />
        <port polarity="Input" name="d1" />
        <port polarity="Input" name="d0" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="s0" name="I0" />
            <blockpin signalname="d1" name="I1" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_7">
            <blockpin signalname="s0" name="I0" />
            <blockpin signalname="d0" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="XLXN_22" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="o" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1760" height="1360">
        <branch name="XLXN_21">
            <wire x2="432" y1="96" y2="96" x1="416" />
            <wire x2="432" y1="96" y2="128" x1="432" />
            <wire x2="448" y1="128" y2="128" x1="432" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="432" y1="224" y2="224" x1="416" />
            <wire x2="432" y1="192" y2="224" x1="432" />
            <wire x2="448" y1="192" y2="192" x1="432" />
        </branch>
        <branch name="s0">
            <wire x2="144" y1="128" y2="128" x1="112" />
            <wire x2="160" y1="128" y2="128" x1="144" />
            <wire x2="144" y1="128" y2="256" x1="144" />
            <wire x2="160" y1="256" y2="256" x1="144" />
        </branch>
        <branch name="o">
            <wire x2="736" y1="160" y2="160" x1="704" />
        </branch>
        <instance x="160" y="192" name="XLXI_6" orien="R0" />
        <instance x="160" y="320" name="XLXI_7" orien="R0" />
        <instance x="448" y="256" name="XLXI_8" orien="R0" />
        <iomarker fontsize="28" x="112" y="128" name="s0" orien="R180" />
        <iomarker fontsize="28" x="736" y="160" name="o" orien="R0" />
        <branch name="d1">
            <wire x2="144" y1="64" y2="64" x1="128" />
            <wire x2="160" y1="64" y2="64" x1="144" />
        </branch>
        <iomarker fontsize="28" x="128" y="64" name="d1" orien="R180" />
        <branch name="d0">
            <wire x2="160" y1="192" y2="192" x1="128" />
        </branch>
        <iomarker fontsize="28" x="128" y="192" name="d0" orien="R180" />
    </sheet>
</drawing>