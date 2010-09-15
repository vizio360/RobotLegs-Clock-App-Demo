package
{
    import flash.display.DisplayObject;
    import flash.display.Sprite;

    /**
     * @author Simone Vicentini
     */
    public class ClockApp extends Sprite
    {
        private var clockContext:ClockContext;
        public function ClockApp()
        {
            clockContext = new ClockContext(this);
        }

        public function alignChildren():void
        {
            var clockCount:int = this.numChildren;
            var clock:DisplayObject;
            var y:Number = 10;
            for (var i:int = 0; i < clockCount; i++)
            {
                clock = this.getChildAt(i) as DisplayObject;
                clock.x = (this.stage.stageWidth - clock.width) / 2;
                clock.y = y;
                y += clock.height + 15;
            }
        }

    }
}
