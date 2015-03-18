// Fill out this function!
function drawHead() {
    var $head = $('<div/>').addClass('head body-part');
    $('.draw-area').append($head);
}

// Fill out this function too!
function drawTorso() {
    var $torso  = $('<div/>').addClass('torso body-part');
    var $pelvis = $('<div/>').addClass('pelvis body-part');
    var $armbox = $('<div/>').addClass('armbox body-part');
    var $legbox = $('<div/>').addClass('legbox body-part');

    $armbox.append($torso);
    $legbox.append($pelvis);

    $('.draw-area').append($armbox);
    $('.draw-area').append($legbox);
}

// Fill out this function!
function drawLeftArm() {
    var $leftArm = $('<div/>').addClass('leftarm body-part');
    $('.armbox').prepend($leftArm);
}

// Fill out this function!
function drawRightArm() {
    var $rightArm = $('<div/>').addClass('rightarm body-part');
    $('.armbox').prepend($rightArm);
}

// Fill out this function!
function drawLeftLeg() {
     var $leftLeg = $('<div/>').addClass('leftleg body-part');
    $('.legbox').prepend($leftLeg);
}

// Fill out this function!
function drawRightLeg() {
    var $rightLeg = $('<div/>').addClass('rightleg body-part');
    $('.legbox').prepend($rightLeg);
}

var drawSequence = [drawHead, drawTorso, drawLeftArm, drawRightArm, drawLeftLeg, drawRightLeg]


/// You shouldn't have to change anything after this part:
for ( var i=0; i < drawSequence.length; i++ ){
    drawSequence[i]();
}

function wrongLetter ( letter ) {
    var $span = $('<span/>').addClass('guessed-letter').text(letter);
    $('#wrong-letters').append($span);
}


