
  var auditoryPoints = 0;
  var visualPoints = 0;
  var tactilePoints = 0;
  var answeredAllQuestions = 1; //TRUE at this point


//Calculate Learning Styles
function determineStyle() {

  //Which questions are auditory, visual, or tactile?
  var auditoryQuestions = "1,5,8,11,13,18,21,24,";
  var visualQuestions = "2,3,7,10,14,16,19,22,";
  var tactileQuestions = "4,6,9,12,15,17,20,23,";

  var temp = 0; //Holds various temp stuff
  var questionNumber = 0; //Which question are we on?

  answeredAllQuestions = 1; //Reset these for this attempt.
  auditoryPoints = 0;
  visualPoints = 0;
  tactilePoints = 0;


  while (auditoryQuestions != "") {
    temp = auditoryPoints //Store original value, used later.
    questionNumber = auditoryQuestions.substring(0, auditoryQuestions.indexOf(",")) //Get a question
    if (auditoryQuestions.indexOf(",") > 0) { //If it's a valid question....
      auditoryQuestions = auditoryQuestions.substring(auditoryQuestions.indexOf(",")+1,auditoryQuestions.length) //...remove it from the string,
      eval("if(document.Question" + questionNumber + ".radio[0].checked) auditoryPoints = auditoryPoints + 1") //calculate the points.
      eval("if(document.Question" + questionNumber + ".radio[1].checked) auditoryPoints = auditoryPoints + 3")
      eval("if(document.Question" + questionNumber + ".radio[2].checked) auditoryPoints = auditoryPoints + 5")
      if ((answeredAllQuestions == 1) && (temp == auditoryPoints)) { //User didn't answer the question; set a flag.
        answeredAllQuestions = 0 //Set to FALSE
      }
    }
    else {
      auditoryQuestions = "" //Just junk left on string; empty it out.
    }
  }

  while (visualQuestions != "") {
    temp = visualPoints //Store original value, used later.
    questionNumber = visualQuestions.substring(0, visualQuestions.indexOf(","))
    if (visualQuestions.indexOf(",") > 0) {
      visualQuestions = visualQuestions.substring(visualQuestions.indexOf(",")+1,visualQuestions.length)
      eval("if(document.Question" + questionNumber + ".radio[0].checked) visualPoints = visualPoints + 1")
      eval("if(document.Question" + questionNumber + ".radio[1].checked) visualPoints = visualPoints + 3")
      eval("if(document.Question" + questionNumber + ".radio[2].checked) visualPoints = visualPoints + 5")
      if ((answeredAllQuestions == 1) && (temp == visualPoints)) {
        answeredAllQuestions = 0 //Set to FALSE
      }
    }
    else {
      visualQuestions = ""
    }
  }

  while (tactileQuestions != "") {
    temp = tactilePoints //Store original value, used later.
    questionNumber = tactileQuestions.substring(0, tactileQuestions.indexOf(","))
    if (tactileQuestions.indexOf(",") > 0) {
      tactileQuestions = tactileQuestions.substring(tactileQuestions.indexOf(",")+1,tactileQuestions.length)
      eval("if(document.Question" + questionNumber + ".radio[0].checked) tactilePoints = tactilePoints + 1")
      eval("if(document.Question" + questionNumber + ".radio[1].checked) tactilePoints = tactilePoints + 3")
      eval("if(document.Question" + questionNumber + ".radio[2].checked) tactilePoints = tactilePoints + 5")
      if ((answeredAllQuestions == 1) && (temp == tactilePoints)) {
        answeredAllQuestions = 0 //Set to FALSE
      }
    }
    else {
      tactileQuestions = ""
    }
  }
  openDialog(); //Place the results under the questions.

}



function openDialog() {
   var info = ""
   var style = ""

   if((auditoryPoints >= visualPoints) && (auditoryPoints >= tactilePoints)) {
     info = info + "<P>If you are an AUDITORY learner, you may wish to use tapes. Tape lectures to help you fill in the gaps in your notes. But do listen and take notes, reviewing notes frequently. Sit in the lecture hall or classroom where you can hear well. After you have read something, summarize it and recite it aloud.</P>"
     style = style + "Auditory "
  }

  if((visualPoints >= auditoryPoints) && (visualPoints >= tactilePoints)) {
     info = info + "<P>If your are a VISUAL learner, then by all means be sure that you look at all study materials. Use charts, maps, filmstrips, notes and flashcards. Practice visualizing or picturing words/concepts in your head. Write out everything for frequent and quick visual review.</P>"
     style = style + "Visual "
  }

  if((tactilePoints >= visualPoints) && (tactilePoints >= auditoryPoints)) {
     info = info + "<P>If you are a TACTILE learner, trace words as you are saying them. Facts that must be learned should be written several times. Keep a supply of scratch paper for this purpose. Taking and keeping lecture notes will be very important. Make study sheets.</P>"
     style = style + "Tactile "
  }

    info = "<P><B><H2>Your Learning Styles Inventory Results</H2></B></P>" + "<P><BIG><B>Based on your input, you are a(n): <B>" + style + "</B> learner.</P><P></P></B></BIG></P>" + info;

  if(answeredAllQuestions == 0) {
     info = "You must answer all statements for an accurate interpretation of your learning style. Try again."
     style = "UNKNOWN"
  }

  document.getElementById('results').innerHTML = info; //Display updated info at the bottom of the page.
  window.location.hash="ShowResults"; //Scroll the window to show the results.
var learningStyle;
console.log(style);

document.getElementById('learnMethod').innerHTML
= style;

}

