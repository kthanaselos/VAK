<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>LET - Learn English Tenses</h1>
        <h2>Εκμάθηση των χρόνων της αγγλικής γλώσσας.</h2>
        <p class="lead">Πολύς κόσμος θεωρεί ότι οι χρόνοι των ρημάτων στην Αγγλική γλώσσα είναι μία δύσκολη υπόθεση.</p>
        <p class="lead">Αύτή η ιστοσελίδα είναι αφιερωμένη στην εκμάθηση των χρόνων των ρημάτων, με 3 διαφορετικούς τρόπους, αξιοποιώντας το μοντέλο VAK.</p>
        <p><a href="https://www.mindtools.com/pages/article/vak-learning-styles.htm" class="btn btn-primary btn-lg">Μάθε περισσότερα &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Visual</h2>
            <img src="Images/visual.JPG"  /><br /><br />
            <p>
                Ένας κυρίως οπτικός μαθητής που απορροφά και διατηρεί τις πληροφορίες καλύτερα όταν παρουσιάζονται, για παράδειγμα, σε εικόνες, πίνακες, γραφήματα κλπ.
            </p>
            <p>
                <a class="btn btn-default" href="http://www.nwlink.com/~donclark/hrd/styles/vakt.html">Μάθε περισσότερα &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Auditory</h2>
            <img src="Images/auditory.JPG"  /><br /><br />
            <p>
                Ένας ακουστικός μαθητής που προτιμάει να ακούει αυτό που του παρουσιάζεται. Ο μαθητής/-τρια ανταποκρίνεται καλύτερα στις φωνές,για παράδειγμα, σε μια διάλεξη ή ομαδική συζήτηση.
            </p>
            <p>
                <a class="btn btn-default" href="http://www.nwlink.com/~donclark/hrd/styles/vakt.html">Μάθε περισσότερα &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Kineshetic</h2>
            <img src="Images/kinesthetic.JPG"  /><br /><br />
            <p>
                Ένας μαθητής που προτιμάει μια φυσική εμπειρία. Του αρέσει να συμμετέχει και να αλληλεπιδρά με το αντικείμενο.
            </p>
            <p>
                <a class="btn btn-default" href="http://www.nwlink.com/~donclark/hrd/styles/vakt.html">Μάθε περισσότερα &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
