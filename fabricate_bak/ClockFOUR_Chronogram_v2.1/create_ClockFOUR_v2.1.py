 # -*- coding: latin-1 -*-
import string
from string import *
import os.path
from random import choice
import string
from numpy import *
import PIL.Image
from reportlab.pdfgen import canvas
from reportlab.graphics import renderPDF
from reportlab.graphics.shapes import Drawing, Group, String, Circle, Rect
from reportlab.lib.units import inch, mm, cm
from reportlab.lib.colors import pink, black, red, blue, green, white
from reportlab.platypus import Paragraph, SimpleDocTemplate, Table, TableStyle
import reportlab.rl_config
import codecs
reportlab.rl_config.warnOnMissingFontGlyphs = 0
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
import glob
import os.path
import sys

from cnc import *
from baffles import *

from numpy import arange
from copy import deepcopy

english_C4_v1 = '''
TWENTYDPTHIRTY
FORTYFIFTYBTEN
THIRTEENONETWO
FOURTEENAFIVEK
FIFTEENSIXTEEN
SEVENTEENTHREE
EIGHTEENELEVEN
NINETEENTWELVE
VMINUTESTPASTO
TWONEIGHTENSIX
THREENINELEVEN
FOURFIVETWELVE
SEVENDLPOCLOCK
'''

class Image:
    def __init__(self, filename, x, y, w=None, h=None):
        self.filename = filename
        self.x = x
        self.y = y
        self.w = w
        self.h = h
    def drawOn(self, c):
        im = PIL.Image.open(self.filename)
        c.drawInlineImage(im, 
                          self.x, self.y, self.w, self.h)
    def translate(self, dx, dy):
        return Image(self.filename, self.x + dx, self.y + dy, self.w, self.h)


PCB_OFF = 1.27 * mm  # 0.05 * inch
HEIGHT = 276 * mm 
WIDTH = 276 * mm

MARGIN = 20 * mm

led_w = 210 * mm
led_h = 208 * mm

pcb_w = 210 * mm
pcb_h = 228 * mm

__version__ = 'C4_v2.1' # refers to mechichanical version.

def setDir(_directory='output'):
    '''
    Set the global directory variable
    '''
    global directory
    directory = _directory
    return True
setDir()
    
mount_r =  1.5 * mm
corner_holes = array([ ## corner mounting posts
        (        10 * mm,          10 * mm,       mount_r),
        (        10 * mm, HEIGHT - 10 * mm,       mount_r),
        (WIDTH - 10 * mm,          10 * mm,       mount_r),
        (WIDTH - 10 * mm, HEIGHT - 10 * mm,       mount_r)])


fontdir = 'C:/Users/David/Documents/GitHub/ClockFOUR/fabricate/fonts'
#fontdir = './fonts'
fontpath = ['C:/Users/David/Documents/GitHub/ClockFOUR/fabricate/fonts']
fontnames = ['HELVETICA-BOLD', 'Helvetica-Bold',
             'HELVETICA', 'Helvetica','Times-Roman','TIMES-ROMAN', 'IMFePIrm28P'
             ]

def add_font(fontname, path=None):
    fontname = fontname.upper()
    if fontname not in fontnames:
        if path is None:
            def addit(args, d, names):
                for fn in names:
                    FN = fn.upper()
                    if FN[:-4] == fontname and FN[-4:] == '.TTF':
                        pdfmetrics.registerFont(TTFont(FN[:-4], os.path.join(d, fn)))
                        fontnames.append(fontname)
                        if not os.path.exists(os.path.join('./fonts/', fn)):
                            source = open(os.path.join(d, fn), 'rb')
                            dest = open(os.path.join('./fonts/', fn), 'wb')
                            dest.write(source.read())
                            dest.close()
                        break
            for fontdir in fontpath:
                os.path.walk(fontdir, addit, ())
                if fontname in fontnames:
                    break
        else:
            path = '%s/%s.ttf' % (path, fontname)
            pdfmetrics.registerFont(TTFont(fontname, path))
            fontnames.append(fontname)
    return fontname in fontnames

def drawline(p, x0, y0, x1, y1, linewidth=1):
    p.moveTo(x0, y0)
    p.lineTo(x1, y1)

def outline(color=red):
    p = MyPath(color=color)
    p.moveTo(0, 0)
    p.lineTo(WIDTH, 0)
    p.lineTo(WIDTH, HEIGHT)
    p.lineTo(0, HEIGHT)
    p.lineTo(0, 0)
    
    return p

def new_canvas(basename):
    can = canvas.Canvas('%s/%s_%s.pdf' % (directory, basename, __version__),
                        pagesize=(WIDTH + 2 * MARGIN, HEIGHT + 2 * MARGIN))
    return can

def create_faceplate(basename, style, case, font, fontsize, reverse=True, color=None,
                     can=None, showtime=False, who=None, baffles=False, do_corner_holes=True,
                     top=None,
                     bottom=None,
                     NIL=False,
                     edgecolor=red):
    if font.title().startswith('Helvetica'):
        font = font.title()
    elif font.title().startswith('Times-Roman'):
        font = font.title()
    else:
        font = font.upper()

    if can is None:
        can = new_canvas(basename)
        save_can = True
    else:
        save_can = False
    can.saveState()

    if save_can:
        can.setFont('Helvetica', 18)
        can.drawCentredString((MARGIN + WIDTH + MARGIN)/2, HEIGHT + 1.5 * MARGIN, "%s %s 276x276x3mm" % (basename, __version__))
    if who:
        can.drawCentredString(WIDTH / 2 + MARGIN, .5*MARGIN, who)
    can.setFont(font, fontsize)

    if reverse:
        can.translate(WIDTH + 2 * MARGIN, 0)
        can.scale(-1, 1)
    else:
        can.drawCentredString((MARGIN + WIDTH + MARGIN)/2, 0.5 * MARGIN, "BACKWARDS!! DO NOT PRINT!!")

#    if top:
#        print H  / inch
#        can.drawCentredString(WIDTH / 2 + MARGIN, HEIGHT - 1.3 * inch + MARGIN, top)
#    if bottom:
#        lines = bottom.splitlines()
#        line_h = .4 * inch
#        start_y = .5 * inch + MARGIN + len(lines) * line_h
#        for i, l in enumerate(lines):
#            can.drawCentredString(WIDTH / 2 + MARGIN, start_y - i * line_h, l)
    if color:
        can.setFillColor(color)
        can.rect(MARGIN, MARGIN, WIDTH, HEIGHT, fill=True)
        can.setFillColor(white)

    can.translate(MARGIN, MARGIN)

#    if NIL:
#        NIL_LED_X = (WIDTH - 3 * inch) / 2
#        NIL_LED_Y = HEIGHT - .75 * inch
#        NIL_DX = 16.67 * mm
#        NIL_DY = 17.946 * mm
#        for i in range(10):
#            x = NIL_LED_X + i * NIL_DX
#            for j in range(2):
#                y = NIL_LED_Y + j * NIL_DY
#                can.rect(x, y, .1*inch, .2 * inch, fill=False)

    print edgecolor == black
    p = outline(color=edgecolor)
    
    if do_corner_holes:
        for hole in corner_holes:
            p.drill(*hole)
    p.drawOn(can, linewidth)
    
    dx = 15 * mm
    x0 = (WIDTH - led_w)/2 + dx / 2
    nx = 14

    dy = 16 * mm
    y0 = (HEIGHT - led_h)/2 + dy / 2
    ny = 13

    baffle_xs = arange(nx + 1) * dx + x0 - dx/2
    baffle_ys = arange(ny + 1) * dy + y0 - dy/2

    led_xs = arange(nx) * dx + x0
    led_ys = (arange(ny) * dy + y0)[::-1]
    if type(style) == type(''):
        lines = style.strip().splitlines()
    else:
        lines = style

################################################################################
    encName = 'winansi'
    encName = 'utf-8'
    decoder = codecs.lookup(encName)[1]
    def decodeFunc(txt):
        if txt is None:
            return ' '
        else:
            return case(decoder(txt, errors='replace')[0])
    def decodeFunc(txt):
        if txt is None:
            return ' '
        else:
            return txt
    lines = [[decodeFunc(case(char)) for char in line] for line in lines]
    print '\n'.join([''.join(l) for l in lines])
################################################################################

    can.setFont(font, fontsize)

    asc, dsc = pdfmetrics.getAscentDescent(font,fontsize)
    if case('here') == 'HERE':
        v_off = asc/2
    else:
        v_off = asc/3
        if 'thegirlnextdoor' in font.lower():
            v_off = asc/5
    if 'italic' in font.lower():
        h_off = pdfmetrics.stringWidth('W', font, fontsize) / 8.
    else:
        h_off = 0
    
    if showtime:
        can.setFillColor((.1, .1, .1))
    xmin = min(baffle_xs)
    xmax = max(baffle_xs)
    ymin = min(baffle_ys)
    ymax = max(baffle_ys)

    if baffles: ## DRAW_GRID???
        p = MyPath()
        for x in baffle_xs:
            drawline(p, x, ymin, x, ymax)
        for y in baffle_ys:
            drawline(p, xmin, y, xmax, y)
        p.drawOn(can, linewidth=2 * mm)

    for i, y in enumerate(led_ys):
        for j, x in enumerate(led_xs):
            # can.circle(x, y, 2.5 * mm, fill=False)
            if len(lines[i]) > j:
                can.drawCentredString(x - h_off, y  - v_off, case(lines[i][j]))
                # can.drawCentredString(x - h_off, y  - v_off, (lines[i][j]).upper())
#########################################################
# draw an apostrophe
    can.drawCentredString(165* mm, 41 * mm, "'")            
#########################################################
    if showtime:
        can.setFillColor((1, 1, 1))
        timechars = [[0, 0], [0, 1],  # it 
                [0, 3], [0, 4],  # is
                [1, 0], [1, 1], [1, 2], [1, 3], # five
                [2, 3], [2, 4], # to
                [3, 0], [3, 1], [3, 2], [3, 3], [3, 4], # three
                [5, 10], [5, 11], [5, 13], [5, 14], [5, 15], # in the
                [6, 8], [6, 9], [6, 10], [6, 11], [6, 12], [6, 13], [6, 14], # morning
                ]
        for i, j in timechars:
            can.drawCentredString(led_xs[j], led_ys[i]  - v_off, case(lines[i][j]))
            
        
    if save_can:
        can.showPage()
    try:
      can.save()
    except IOError:
      can.save()
    print 'wrote', can._filename
    try:
        can.restoreState()
    except:
        pass
    return can._filename


def curve(path, center, radius, tstart, tstop):
    '''add an arc to path
    tstart/tstop in degrees
    '''
    center = array(center)
    if tstart > tstop:
        dt = -1.
    else:
        dt = 1.
    for t in arange(tstart, tstop, dt) * DEG:
        pt = center + [radius * cos(t), radius * sin(t)]
        path.lineTo(*pt)
    pt = center + [radius * cos(tstop * DEG), radius * sin(tstop * DEG)]
    path.lineTo(*pt)
    return path
    
linewidth = None
W = WIDTH + 2 * MARGIN
H = HEIGHT + 2 * MARGIN

def led_strip(x, y, p):
    w = 15 * mm
    h = 16 * mm
    p.translate(-x + w/2, -y + w/2)
    p.moveTo(0, 0)
    p.lineTo(w, 0)
    p.lineTo(w, h)
    p.lineTo(0, h)
    p.lineTo(0, 0)
    p.translate(x - w/2, y - w/2)
    return p


#####################################################
def create_backplate():
    can = canvas.Canvas('%s/backplate_%s.pdf' % (directory, __version__),
                        pagesize=(WIDTH + 2 * MARGIN, HEIGHT + 2 * MARGIN))
    can.drawCentredString((MARGIN + WIDTH + MARGIN)/ 2, HEIGHT + 1.5 * MARGIN, "ClockFOUR Backplate %s 276x276x3mm" % __version__)

    can.translate(MARGIN, MARGIN)
    p = outline(color=black)

    for hole in corner_holes:
        p.drill(*hole)

## outline of the PCB
#    p.rect([(WIDTH-pcb_w)/2, (HEIGHT-pcb_h)/2, pcb_w, pcb_h,])

## PCB mounting holes
    pcb_mounts = array([ 
        (        (WIDTH - pcb_w)/2 + 5 * mm,          (HEIGHT-pcb_h)/2 + 5 * mm,       mount_r),
        (        (WIDTH - pcb_w)/2 + 5 * mm, HEIGHT - (HEIGHT-pcb_h)/2 - 5 * mm,       mount_r),
        (WIDTH - (WIDTH - pcb_w)/2 - 5 * mm,          (HEIGHT-pcb_h)/2 + 5 * mm,       mount_r),
        (WIDTH - (WIDTH - pcb_w)/2 - 5 * mm, HEIGHT - (HEIGHT-pcb_h)/2 - 5 * mm,       mount_r)])

    for hole in pcb_mounts:
        p.drill(*hole)

## circular reset switch
    p.drill((WIDTH-pcb_w)/2 + 22 * mm, HEIGHT-((HEIGHT-pcb_h)/2) - 4 * mm, 4 * mm)
    can.drawCentredString((WIDTH-pcb_w)/2 + 22 * mm, HEIGHT-((HEIGHT-pcb_h)/2) + 2 * mm, "Reset")

## FTDI connector
    p.rect([(WIDTH-pcb_w)/2 + 35 * mm, HEIGHT-((HEIGHT-pcb_h)/2) - 10 * mm, 18 * mm, 4 * mm,])
    can.drawCentredString((WIDTH-pcb_w)/2 + 44 * mm, HEIGHT-((HEIGHT-pcb_h)/2) - 4 * mm, "FTDI 5V")
    can.drawCentredString((WIDTH-pcb_w)/2 + 44 * mm, HEIGHT-((HEIGHT-pcb_h)/2) - 14 * mm, "GRN      BLK")

## Button_R - Color
    p.drill((WIDTH-pcb_w)/2 + 10 * mm, HEIGHT-((HEIGHT-pcb_h)/2) - 24.5 * mm, 6 * mm)
#    p.rect([(WIDTH-pcb_w)/2 + 5 * mm, HEIGHT-((HEIGHT-pcb_h)/2) - 29.5 * mm, 10 * mm, 10 * mm,])
    can.drawCentredString((WIDTH-pcb_w)/2 + 10 * mm, HEIGHT-((HEIGHT-pcb_h)/2) - 35 * mm, "COLOR")
    can.drawCentredString((WIDTH-pcb_w)/2 + 10 * mm, HEIGHT-((HEIGHT-pcb_h)/2) - 40 * mm, "(choose)")

## Button_L - Mode
    p.drill((WIDTH-pcb_w)/2 + 34 * mm, HEIGHT-((HEIGHT-pcb_h)/2) - 24.5 * mm, 6 * mm)
#    p.rect([(WIDTH-pcb_w)/2 + 29 * mm, HEIGHT-((HEIGHT-pcb_h)/2) - 29.5 * mm, 10 * mm, 10 * mm,])
    can.drawCentredString((WIDTH-pcb_w)/2 + 34 * mm, HEIGHT-((HEIGHT-pcb_h)/2) - 35 * mm, "MODE")
    can.drawCentredString((WIDTH-pcb_w)/2 + 34 * mm, HEIGHT-((HEIGHT-pcb_h)/2) - 40 * mm, "(set)")

## Power socket
    p.drill(WIDTH/2, (HEIGHT-pcb_h)/2 - 12 * mm, 4.05 * mm)
    can.drawCentredString(WIDTH/2, (HEIGHT-pcb_h)/2 - 5 * mm, "INPUT: 5V 3A   tip(+)")

## Keyholes
    p.drill((WIDTH-pcb_w)/4, HEIGHT - 30 * mm, 6 * mm)
    p.drill((WIDTH-pcb_w)/4, HEIGHT - 23 * mm, 2.5 * mm)
    p.drill(WIDTH-(WIDTH-pcb_w)/4, HEIGHT - 30 * mm, 6 * mm)
    p.drill(WIDTH-(WIDTH-pcb_w)/4, HEIGHT - 23 * mm, 2.5 * mm)

    p.drawOn(can, linewidth)
    can.showPage()
    try:
      can.save()
    except IOError:
      can.save()
    print 'wrote', can._filename
#####################################################


def create_sides():
    can = canvas.Canvas('%s/sides_%s.pdf' % (directory, __version__),
                        pagesize=(WIDTH + 2 * MARGIN, HEIGHT + 2 * MARGIN))
    can.drawCentredString((MARGIN + WIDTH + MARGIN)/ 2, HEIGHT + 1.5 * MARGIN, "ClockFOUR sides %s" % __version__)

    can.translate(MARGIN, MARGIN)
    p = MyPath(color=black)

## TOP
    p.rect([0, 0, WIDTH, 20 * mm,])
    can.drawCentredString(WIDTH/2, -5 * mm, "TOP = 276 x 20 x 3 mm")

## BOTTOM    
    p.rect([0, 40 * mm, WIDTH, 20 * mm,])
    can.drawCentredString(WIDTH/2, 35 * mm, "BOTTOM = 276 x 20 x 3 mm")

## LEFT
    p.rect([3 * mm, 80 * mm, WIDTH - 6 * mm, 20 * mm,])
    can.drawCentredString(WIDTH/2, 75 * mm, "LEFT = 270 x 20 x 3 mm")

## RIGHT    
    p.rect([3 * mm, 120 * mm, WIDTH - 6 * mm, 20 * mm,])
    can.drawCentredString(WIDTH/2, 115 * mm, "RIGHT = 270 x 20 x 3 mm")

    p.drawOn(can, linewidth)
    can.showPage()
    try:
      can.save()
    except IOError:
      can.save()
    print 'wrote', can._filename
    
################################################



BAFFLE_H = 14 * mm
BAFFLE_T = 2 * mm
W = WIDTH 
H = HEIGHT
PAGE_MARGIN = 20 * mm
DX = 15 * mm
DY = 16 * mm

h_baffle = asym_baffle(BAFFLE_H,
                         BAFFLE_T,
                         n_notch=14,
                         delta=DX,
                         overhangs=(BAFFLE_T/2 + 3 * mm, BAFFLE_T/2 + 3 * mm),
                         overhang_heights=(BAFFLE_H + 2 * mm, BAFFLE_H + 2 * mm),
                         overhang_tapers=(False, False),
                         jump_strips=False,
                         margin=0.2 * mm
                         )
v_baffle = asym_baffle(BAFFLE_H,
                         BAFFLE_T,
                         n_notch=13,
                         delta=DY,
                         overhangs=(BAFFLE_T/2 + 3 * mm, BAFFLE_T/2 + 3 * mm),
                         overhang_heights=(None, None),
                         overhang_tapers=(False, False),
                         jump_strips=False,
                         margin=0.2 * mm
                         )
##h_baffle = x30_h_baffle(BAFFLE_H,
##                         BAFFLE_T,
##                         n_notch=15,
##                         delta=DX,
##                         overhangs=(BAFFLE_T/2, BAFFLE_T/2),
##                         overhang_heights=(None, None),
##                         overhang_tapers=(False, False),
##                         board_hooks=(0, 0),
##                         board_hooks_up=False,
##                         margin=0.016
##                         )
##v_baffle = x30_v_baffle(BAFFLE_H,
##                         BAFFLE_T,
##                         n_notch=14,
##                         delta=DY,
##                         overhangs=(5*mm, 5*mm),
##                         overhang_heights=(None, None),
##                         overhang_tapers=(False, False),
##                         margin=0.016
##                         )



def create_baffles():
    can = canvas.Canvas('%s/baffles_%s.pdf' % (directory, __version__),
                        pagesize=(WIDTH + 2 * MARGIN, HEIGHT + 2 * MARGIN))
    can.drawCentredString((MARGIN + WIDTH + MARGIN)/ 2, HEIGHT + 1.5 * MARGIN, "ClockFOUR baffles and sides %s" % __version__)
    can.translate(MARGIN, MARGIN)

    p = MyPath(color=black)

## localizer
    p.drill(30 * mm, 100 * mm, 1.5 * mm)
    p.drill(30 * mm, 100 * mm, 4.0 * mm)
    can.drawCentredString(100 * mm, 90 * mm, 'Localizer: Rout=4mm, Rin=1.5mm; 12 per clock')
    p.drawOn(can, linewidth)

## h_baffle
    h_baffle.translate(0, 10 * mm)
    can.drawCentredString(50 * mm, 0 * mm, 'H baffle: 218x16x2mm; 14 per clock')
    h_baffle.drawOn(can, linewidth)

## v_baffle
    v_baffle.translate(0, 50 * mm)
    can.drawCentredString(50 * mm, 40 * mm, 'V baffle: 216x14x2mm; 15 per clock')
    v_baffle.drawOn(can, linewidth)

    can.drawCentredString(50 * mm, -10 * mm, 'ClockFOUR_v2 Baffles 2mm BLACK Acrylic')


    can.showPage()
    try:
      can.save()
    except IOError:
      can.save()
    print 'wrote', can._filename

def makeGlam():
    add_all_fonts()
    directory = 'GlamShots'
    can = canvas.Canvas('%sjr_%s.pdf' % ('GlamShots', __version__),
                        pagesize=(WIDTH + 2 * MARGIN, HEIGHT + 2 * MARGIN))
    can.drawCentredString(WIDTH / 2, HEIGHT+1.5*MARGIN, "English_v3")
    can.showPage()
    for font in fontnames:
        for case in [lower, upper]:
            try:
                case_str = ['UPPER', 'lower'][case == lower]
                create_faceplate('english_v3 %s %s' % (font, case_str), english_v3, case, font, 35, False,
                                 color=black, can=can, showtime=False)
                can.showPage()
                create_faceplate('english_v3 %s %s' % (font, case_str), english_v3, case, font, 35, False,
                                 color=black, can=can, showtime=True)
                can.showPage()
            except Exception, e:
                pass
    try:
      can.save()
    except IOError:
      can.save()
    print 'wrote', can._filename

if __name__ == '__main__':
    create_backplate()
    
    create_baffles()

    create_sides()

    font = 'Helvetica'
    add_font(font, 'C:/Users/David/Documents/GitHub/ClockFOUR/fabricate/fonts')    
    create_faceplate('english_lower %s' % (font), english_C4_v1, lower, font, 30,
                     baffles=False,
                     do_corner_holes=True,
                     reverse=False,
                     showtime=False,
                     color=None)
    create_faceplate('english_upper %s' % (font), english_C4_v1, upper, font, 30,
                     baffles=False,
                     do_corner_holes=True,
                     reverse=False,
                     showtime=False,
                     color=None)
    create_faceplate('english_lower_Baffle %s' % (font), english_C4_v1, lower, font, 30,
                     baffles=True,
                     do_corner_holes=True,
                     reverse=False,
                     showtime=False,
                     color=None)
    create_faceplate('english_upper_Baffle %s' % (font), english_C4_v1, upper, font, 30,
                     baffles=True,
                     do_corner_holes=True,
                     reverse=False,
                     showtime=False,
                     color=None)
    create_faceplate('english_lower_FINAL %s' % (font), english_C4_v1, lower, font, 30,
                     baffles=False,
                     do_corner_holes=True,
                     reverse=True,
                     showtime=False,
                     color=None)
    create_faceplate('english_upper_FINAL %s' % (font), english_C4_v1, upper, font, 30,
                     baffles=False,
                     do_corner_holes=True,
                     reverse=True,
                     showtime=False,
                     color=None)