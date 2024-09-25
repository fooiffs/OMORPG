et initializered = true
      call DzFrameClearAllPoints(inputHp)
      call SetFrameAbsolutePoint(inputHp, JN_FRAMEPOINT_CENTER, .25, .025)
      set inputHp = GetPortraitButtonManaText()
      call DzFrameClearAllPoints(inputHp)
      c