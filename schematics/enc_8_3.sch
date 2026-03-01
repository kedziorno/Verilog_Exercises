<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_4" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="i7" />
        <signal name="i6" />
        <signal name="i5" />
        <signal name="i4" />
        <signal name="en" />
        <signal name="i3" />
        <signal name="i2" />
        <signal name="i1" />
        <signal name="i0" />
        <signal name="o2" />
        <signal name="o0" />
        <signal name="o1" />
        <port polarity="Input" name="i7" />
        <port polarity="Input" name="i6" />
        <port polarity="Input" name="i5" />
        <port polarity="Input" name="i4" />
        <port polarity="Input" name="en" />
        <port polarity="Input" name="i3" />
        <port polarity="Input" name="i2" />
        <port polarity="Input" name="i1" />
        <port polarity="Input" name="i0" />
        <port polarity="Output" name="o2" />
        <port polarity="Output" name="o0" />
        <port polarity="Output" name="o1" />
        <blockdef name="enc_4_2">
            <timestamp>2026-3-1T14:23:10</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="o0" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_18" name="I1" />
            <blockpin signalname="o1" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_7">
            <blockpin signalname="i7" name="I0" />
            <blockpin signalname="i6" name="I1" />
            <blockpin signalname="i5" name="I2" />
            <blockpin signalname="i4" name="I3" />
            <blockpin signalname="o2" name="O" />
        </block>
        <block symbolname="enc_4_2" name="XLXI_22">
            <blockpin signalname="i3" name="i3" />
            <blockpin signalname="i2" name="i2" />
            <blockpin signalname="i1" name="i1" />
            <blockpin signalname="i0" name="i0" />
            <blockpin signalname="en" name="en" />
            <blockpin signalname="XLXN_1" name="o1" />
            <blockpin signalname="XLXN_18" name="o0" />
        </block>
        <block symbolname="enc_4_2" name="XLXI_23">
            <blockpin signalname="i7" name="i3" />
            <blockpin signalname="i6" name="i2" />
            <blockpin signalname="i5" name="i1" />
            <blockpin signalname="i4" name="i0" />
            <blockpin signalname="en" name="en" />
            <blockpin signalname="XLXN_19" name="o1" />
            <blockpin signalname="XLXN_4" name="o0" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1">
            <wire x2="880" y1="128" y2="128" x1="800" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="880" y1="784" y2="784" x1="800" />
        </branch>
        <instance x="880" y="256" name="XLXI_5" orien="R0" />
        <instance x="880" y="848" name="XLXI_6" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="832" y1="384" y2="384" x1="800" />
            <wire x2="832" y1="384" y2="720" x1="832" />
            <wire x2="880" y1="720" y2="720" x1="832" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="848" y1="528" y2="528" x1="800" />
            <wire x2="848" y1="192" y2="528" x1="848" />
            <wire x2="880" y1="192" y2="192" x1="848" />
        </branch>
        <instance x="880" y="1280" name="XLXI_7" orien="R0" />
        <branch name="i7">
            <wire x2="352" y1="528" y2="528" x1="208" />
            <wire x2="416" y1="528" y2="528" x1="352" />
            <wire x2="352" y1="528" y2="1216" x1="352" />
            <wire x2="880" y1="1216" y2="1216" x1="352" />
        </branch>
        <branch name="i6">
            <wire x2="368" y1="592" y2="592" x1="208" />
            <wire x2="416" y1="592" y2="592" x1="368" />
            <wire x2="368" y1="592" y2="1152" x1="368" />
            <wire x2="880" y1="1152" y2="1152" x1="368" />
        </branch>
        <branch name="i5">
            <wire x2="384" y1="656" y2="656" x1="208" />
            <wire x2="416" y1="656" y2="656" x1="384" />
            <wire x2="384" y1="656" y2="1088" x1="384" />
            <wire x2="880" y1="1088" y2="1088" x1="384" />
        </branch>
        <branch name="i4">
            <wire x2="400" y1="720" y2="720" x1="208" />
            <wire x2="416" y1="720" y2="720" x1="400" />
            <wire x2="400" y1="720" y2="1024" x1="400" />
            <wire x2="880" y1="1024" y2="1024" x1="400" />
        </branch>
        <branch name="en">
            <wire x2="336" y1="784" y2="784" x1="208" />
            <wire x2="416" y1="784" y2="784" x1="336" />
            <wire x2="416" y1="384" y2="384" x1="336" />
            <wire x2="336" y1="384" y2="784" x1="336" />
        </branch>
        <branch name="i3">
            <wire x2="416" y1="128" y2="128" x1="208" />
        </branch>
        <branch name="i2">
            <wire x2="416" y1="192" y2="192" x1="208" />
        </branch>
        <branch name="i1">
            <wire x2="416" y1="256" y2="256" x1="208" />
        </branch>
        <branch name="i0">
            <wire x2="416" y1="320" y2="320" x1="208" />
        </branch>
        <branch name="o2">
            <wire x2="1168" y1="1120" y2="1120" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="208" y="128" name="i3" orien="R180" />
        <iomarker fontsize="28" x="208" y="192" name="i2" orien="R180" />
        <iomarker fontsize="28" x="208" y="256" name="i1" orien="R180" />
        <iomarker fontsize="28" x="208" y="320" name="i0" orien="R180" />
        <iomarker fontsize="28" x="208" y="528" name="i7" orien="R180" />
        <iomarker fontsize="28" x="208" y="592" name="i6" orien="R180" />
        <iomarker fontsize="28" x="208" y="656" name="i5" orien="R180" />
        <iomarker fontsize="28" x="208" y="720" name="i4" orien="R180" />
        <iomarker fontsize="28" x="208" y="784" name="en" orien="R180" />
        <iomarker fontsize="28" x="1168" y="1120" name="o2" orien="R0" />
        <instance x="416" y="416" name="XLXI_22" orien="R0">
        </instance>
        <instance x="416" y="816" name="XLXI_23" orien="R0">
        </instance>
        <branch name="o0">
            <wire x2="1168" y1="160" y2="160" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="160" name="o0" orien="R0" />
        <branch name="o1">
            <wire x2="1168" y1="752" y2="752" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="752" name="o1" orien="R0" />
        <text style="fontsize:64;fontname:Arial" x="348" y="1380">EN ENCODER 8-3</text>
    </sheet>
</drawing>