import sys

import wx


def main(sysargs=sys.argv[:]):
    app = wx.App(False)

    frame = wx.Frame(None, wx.ID_ANY, "Hello World")
    frame.Show(True)

    app.MainLoop()
    return 0


if __name__ == '__main__':
    sys.exit(main())

# vim:filetype=python
