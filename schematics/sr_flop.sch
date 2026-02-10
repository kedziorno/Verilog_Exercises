<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="q" />
        <signal name="q_n" />
        <signal name="s" />
        <signal name="r" />
        <port polarity="Output" name="q" />
        <port polarity="Output" name="q_n" />
        <port polarity="Input" name="s" />
        <port polarity="Input" name="r" />
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <block symbolname="nand2" name="XLXI_1">
            <blockpin signalname="q_n" name="I0" />
            <blockpin signalname="s" name="I1" />
            <blockpin signalname="q" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="q" name="I0" />
            <blockpin signalname="r" name="I1" />
            <blockpin signalname="q_n" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="208" y="288" name="XLXI_1" orien="R0" />
        <instance x="464" y="272" name="XLXI_2" orien="R180" />
        <branch name="q">
            <wire x2="480" y1="192" y2="192" x1="464" />
            <wire x2="480" y1="192" y2="336" x1="480" />
            <wire x2="512" y1="192" y2="192" x1="480" />
            <wire x2="480" y1="336" y2="336" x1="464" />
        </branch>
        <branch name="q_n">
            <wire x2="192" y1="368" y2="368" x1="160" />
            <wire x2="208" y1="368" y2="368" x1="192" />
            <wire x2="208" y1="224" y2="224" x1="192" />
            <wire x2="192" y1="224" y2="368" x1="192" />
        </branch>
        <branch name="s">
            <wire x2="208" y1="160" y2="160" x1="160" />
        </branch>
        <branch name="r">
            <wire x2="512" y1="400" y2="400" x1="464" />
        </branch>
        <iomarker fontsize="28" x="160" y="160" name="s" orien="R180" />
        <iomarker fontsize="28" x="160" y="368" name="q_n" orien="R180" />
        <iomarker fontsize="28" x="512" y="400" name="r" orien="R0" />
        <iomarker fontsize="28" x="512" y="192" name="q" orien="R0" />
    </sheet>
</drawing>