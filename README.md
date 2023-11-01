# quiz.cls

## Environments
### page
- Wraps each A5 page
- Contains a continuous enumeration of q_items using ctr_question
- Designed to contain qitem, qmitem, qeitem, qlenum
- Page numbering using ctr_page
### qlenum
- Question with a list of answers (select one, match, etc.)
- Least vertical space (no text needed)
- tabular environment
- internal counter "ctr_qlitem"
- counter is reset at beginning of each qlenum
- optional parameters passed to tabular, default is `[ll]`
- ```latex
  \begin{qlenum}[l]{Question Text}
    \qlitem{First Option}
    \qlitem{Second Option}
  \end{qlenum}
  ```
## Commands
### qitem
- Default / base question item
- Leaves most vertical space for answer sentence
- `\qitem{Question Text}`
### qmitem
- Takes a list of answers to be provided
- made for music / listening questions
- `\qmitem{Title: \\ Artist: \\ Cover Artist:}`
### qeitem
- Prepends question with a note that the value is to be guessed
- Less space than qitem
- `\qeitem{Question Text}`
### qlitem
- Enumerates items
- Designed to be used inside a qlenum
- ```latex
  \qlitem{This would be a}
  \qlitem{This would be b}
  ```
### mydate
- renew to set the header date
- `\renewcommand{\mydate}{13.12.2010}`
### limerick
- takes a vertical offset, horizontal offset and limerick text
- ```latex
  \limerick{2pt}{3pt}{This \\ is \\ a \\ limerick}
  ```


