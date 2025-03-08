/// Document background configuration
public struct PDFDocumentBackground {
    /**
     * Color used to fill the background on every page.
     *
     * Defaults to `nil`, which results in a transparent background
     */
    public var color: Color?
    
    /**
     * Color used to fill the left side of the page. Width is defined by `leftSideWidth`
     *
     * Defaults to `nil`, which results in a transparent background
     */
    public var leftSideColor: Color?
    
    /**
     * Width factor of the left side of the page that will be filled with `leftSideColor`
     *
     * Defaults to `0`
     */
    public var leftSideWidthFactor: Float = 0
}
