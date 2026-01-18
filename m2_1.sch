<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <port polarity="Output" name="XLXN_1" />
        <port polarity="Input" name="XLXN_2" />
        <port polarity="Input" name="XLXN_3" />
        <port polarity="Input" name="XLXN_4" />
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <block symbolname="m2_1" name="XLXI_1">
            <blockpin signalname="XLXN_2" name="D0" />
            <blockpin signalname="XLXN_3" name="D1" />
            <blockpin signalname="XLXN_4" name="S0" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="896" y="816" name="XLXI_1" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1248" y1="688" y2="688" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1248" y="688" name="XLXN_1" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="896" y1="656" y2="656" x1="864" />
        </branch>
        <iomarker fontsize="28" x="864" y="656" name="XLXN_2" orien="R180" />
        <branch name="XLXN_3">
            <wire x2="896" y1="720" y2="720" x1="864" />
        </branch>
        <iomarker fontsize="28" x="864" y="720" name="XLXN_3" orien="R180" />
        <branch name="XLXN_4">
            <wire x2="896" y1="784" y2="784" x1="864" />
        </branch>
        <iomarker fontsize="28" x="864" y="784" name="XLXN_4" orien="R180" />
    </sheet>
</drawing>