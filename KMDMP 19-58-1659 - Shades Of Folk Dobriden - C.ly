\version "2.14.2"
\header {
    title="\"Shades Of Folk\" Dobriden: C Leadsheet"
    composer="Derived from KMDMP 19-58-1659 at https://klezmerinstitute.org/KMDMP"
	opus="Arr: E. Rangell.  Copyright and Attribution: Institute of Manuscripts Vernadsky National Library of Ukraine"
	copyright="Creative Commons CC BY license: https://creativecommons.org/licenses/by/4.0/"
}


sopmusicA = { 
d4 g a 
g16 (a b c') b2
 c'16 (d' c' b) b (c' b a) a (b a g)
 g2.
 b8. (d'16) c'2
 b8. (d'16) c'2
 b4 g a 
g16 a b c' b2
 d'16 c' b a b a g8 g4 
d4 g a 
g16 (a b c') b2 
c'16 (d' c' b) b (c' b a) a (b a g) 
g2.
\times 2/3 { d'8 c' b } a2 
c'4 \times 2/3 {b8 a g fis g a}
 b8 a16 g g2
}

sopmusicB = {
 d'4 d' d' 
fis' e' d' 
c'8 d'16 (c') b4 c'8 e' 
d'2.
 g'4 fis' e' 
g' fis' e' 
fis'8 (d') d'2
 fis'4 e' d' 
c'8 d'16 (c') b4 c'8 e' 
d'2.
c'8 c' b4 c'
d'8 d' e'4 d'
 c'8 c' a4 b 
c'8 c' d4' b 
c'16 (d' c' b) b (c' b a) a (b a g)
}
sopmusicBA = {
 b2.
}
sopmusicBB = {
 g2.
}

sopmusicC = {
 b8. \segno d'16 c'4 c'4
 b8. d'16 a4 a4 
 \times 2/3 {d'8 c' b a b a g fis e}
 d2.
 b8. d'16 c'4 c' 
b8. d'16 a4 a 
\times 2/3 {d'8 e' d' d' a b} g4
 g2. ^"Fine" 
}

sopmusicD = {
 b2  g4
 b8 b g2
 b8 b g2
 c'8 c' a2
 c'8 c' a2
 \times 2/3 {d'8 c' d'} d'2
 \times 2/3 {d'8 b d' g' fis' e'} d'4
 \times 2/3 {c'8 a c' e' d' c'} b4
 g16 a b c' b2
 g2. ^"D.S. al Fine"
}



sopChords = \chords { 
g2. s2. c4 g4 d4 g2.
s4 c2 s4 c2 g2. s2. s2. g2. s2.
c4 g4 d4 g2. d2. s2. g2.
d2. s2. c2. g2. s2. s2. d2. s2. c2 d4 g2.
c2. g2. c2. d2. c4 g4 d4 g2.
g2. g4 c2 g4 d2 s2. s2. g4 c2 g4 d2 s2 g4 s2.
g2. s2. s2. c2. s2. d2. g2. c2. d2. g2. 
 
}

sopMusic = {
\set Score.markFormatter = #format-mark-circle-alphabet
\clef treble \time 3/4 \key g \major
\sopmusicA 
\repeat volta 2 \sopmusicB \alternative {\sopmusicBA \sopmusicBB}
\repeat volta 2 \sopmusicC
\repeat volta 2 \sopmusicD 
}

\score {
	  \context StaffGroup <<
 	      \context ChordNames = cds { \transpose c' c' \sopChords }
	      \context Staff = sopr <<		  
		  \context Voice = sopranos { \voiceOne \transpose c c' \sopMusic }
	      >>
	  >>
	\layout {}
}































