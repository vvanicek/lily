\version "2.18.2"
\header {
title = "Old L.A. Tonight"
composer = "Ozzy Osbourne"
opus = "Ozzmosis"
}

keyTime = {
  \key c \major
  \time 4/4
  \tempo "Andantino" 4 = 80
}



% Piano  --------------------------------------------

mel1 = \relative c' {
  \clef treble
  \keyTime

  % prima volta
  %{
  <c f>8  a  <c f>  a  <c f> a   c16 <g c>8.
  <c e>8  g  <c e>  g <c e>  g  <c e>16  f 8.
  <d g>8  b  <d g>  b  <d g>  b  <d g>  b
  %}
  f2. r16 g-> ~ g8 
  c,2~ c8  e4 f8->
  g 2. g8 g
  e2. r16 e-> ~ e8 

  f2. r16 g-> ~ g8 
  c,2~ c8  e4 f8->
  g2. g8 d
  c2~ c8  e4 f8->

  e2. r4
}

mel2 = \relative c {
%  \clef bass
  \keyTime

  % prima volta
  < f c' f >2.  r4
  < c g' c >2. r4
  < g' d' g> 2. r4
  <a c e>2 r2

  < f c' f >2.  r4
  < c g' c >2. r4
  < g' d' g> 2. r4
  < c, g' c >2. r4

  < c g' c >2. r4
  
}




finRH = \relative c'' {
  \clef treble
  \keyTime

  <c f>8  a  <c f>  a  <c f> a   c16 <g c>8.
  <c e>8  g  <c e>  g <c e>  g  <c e>16  f 8.
  <d g>8  b  <d g>  b  <d g>  b  <d g>  b
 } 


finLH = \relative c {
%  \clef bass
  \keyTime

  % prima volta
  < f c' f >2.  r16 g'-> ~ g8
  < c,, g' c >2 ~ < c g' c >8 e'8. f->
  < g, d' g> 2.  g'8 g
  <a, c e>2. r16 e'-> ~ e8 

  < f, c' f >2.  r16 g'-> ~ g8
  < c,, g' c >2 ~ < c g' c >8 e'8. f->
  < g, d' g> 2. g'8 d
  < c, g' c >2 ~ < c g' c >8 e'8. f->

  < c, g' c  e>2. r4
  
}




% layout --------------------------------------------
\score {
  <<
%{
    % PIANO
	\new PianoStaff <<
      \set PianoStaff.instrumentName = #"Piano"
      \new Staff = "RH" \RH
      \new Staff = "LH" \LH   \clef bass
    >>
%}



<< \finRH  \\ \finLH >> 


  >>
  
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
 
 \midi { }
%{ 
%}
 
 }
