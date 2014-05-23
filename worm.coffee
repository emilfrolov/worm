class WormRun
  constructor: ->
  
  wormStep: (stepFrom,stepTo)->

    wormPosStart = stepFrom * 20;
    
    stepCount = stepTo - stepFrom; 
    
    wormWidth = Math.abs(stepCount) * 20 + 16;
    
    wormPosEnd = stepCount * 20 + wormPosStart;
    
    
    
    if stepCount > 0    
    
      $('.worm').animate {'width' : wormWidth},400, ->
        $('.worm').animate {'width' : 16+'px','left' : wormPosEnd+'px'},400;
    
    else
      
      $('.worm').animate {'width' : wormWidth,'left' : wormPosEnd+'px'},400, ->
        $('.worm').animate {'width' : 16+'px'},400;
      
    
    
    
worm = new WormRun();

$(document).on 'click', '.control-elem', ->
    activeIndex = $('.control-elem.active').index();
    targetIndex = $(this).index();
    
    $('.control-elem.active').removeClass 'active';
    $(this).addClass 'active';
    
    worm.wormStep(activeIndex,targetIndex);