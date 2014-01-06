IT resources at CHILI
=====================

Development server
------------------

The lab owns a development server that you can use to demo your projects, run
long processes or store data that you want to share outside of the lab:
``chili-research.epfl.ch``.

You can access the demos here: `chili-research.epfl.ch <https://chili-research.epfl.ch>`_.

You can log onto this server with a ``ssh`` client and your regular GASPAR
credentials. If you are running a Windows machine, ``putty`` and ``WinSCP`` can be
helpful.

If you create a new ``public_html`` directory in your home directory, the content
becomes automatically available from the web at
``chili-research.epfl.ch/~your_login``. This is very convenient to share data,
files or even publish a custom webpage.

Feel free to ask Pierre if you want to know more about it.

Programming
-----------

Programming environments
++++++++++++++++++++++++


At CHILI, people are free to use the environment they are the most confident
with, be it C\# on Windows, Python on Linux, C++ on MacOSX, or any other
combination you prefer.

However, keep in mind a few important points:

- we work as a team, and we share a lot of code: try as much as possible to
  rely on *cross-platform* languages and libraries.

- if you produce code that needs to be compiled, we recommend you to rely on
  build systems like ``cmake`` to ensure your code will be easy to compile on
  other platforms.


Examples of good cross-platform libraries you may want to consider before
starting a new project include `Qt <http://qt-project.org/>`_ (for GUI),
`mono <http://www.mono-project.com>`_ (for cross-device development),
`OpenCV <http://opencv.org/>`_ (for image processing): an open-source
library exist for virtually every task, just ask for advices around you!

Code versioning and code sharing
++++++++++++++++++++++++++++++++

During your time at CHILI, you are likely to produce some (or maybe a lot) of
code. To ensure your work will not be lost, you should rely on a Version Control
System to manage your source code. At CHILI, we use `GIT <http://git-scm.org>`_.

Because the current `GIT support at EPFL <http://git.epfl.ch>`_ has some
shortcomings, we mainly use `GitHub <https://github.com/chili-epfl>`_.

.. note::
    If you do not know GIT yet, do not worry: just ask around! People will show
    you how it works. Also, GIT tutorials are regularly organized. Ask Pierre!


Managing data
-------------

At CHILI we generate quite often large experimental datasets (videos,
eye-tracking logs, etc.). Depending on the nature of these datasets, you need to
handle them differently.

We have two main categories:

- *transient datasets*: data that have *temporary* value, either for further
  processing or for sharing, but do not need to be kept over long period of
  time. You can store those files on the ``chili-research`` development server, or
  , if you want to share the datasets only internally at EPFL, you can use the
  Windows share ``scxcraft.epfl.ch``.

- *archived datasets*: if you produce valuable datasets that you want to make
  public (typically, datasets you refer to in scientific publications or in your
  PhD thesis), then you *must* use the `Zenodo
  <https://zenodo.org/collection/user-epfl-chili>`_ platform. When you upload a
  dataset to Zenodo, you must also provide metadata like keywords. Do not
  hesistate to ask for help!

Often, the datasets you produce should also be presented on the `CHILI webpage
<http://chili.epfl.ch>`_. Do not hesistate to extract short samples (like 30
seconds of video) and to add them on yhe page of your project.

.. note::
  **And remember: ask around you (your supervisor, the PhD students...)! We will
  be happy to help you to start!**



