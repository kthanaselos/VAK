<%@ Page Title="VisualPresentation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="VisualPresentation.aspx.cs" Inherits="VisualPresentation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="presentation" runat="server">
        <asp:Timer ID="Timer1" runat="server" Enabled="false" Interval="1000" ontick="Timer1_Tick"></asp:Timer>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
               <asp:Label ID="Label1" runat="server"></asp:Label>
            </ContentTemplate>
            <Triggers>
               <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick">
               </asp:AsyncPostBackTrigger>
            </Triggers>
        </asp:UpdatePanel>
        <br />
        <asp:Button runat="server" ID="StartTimer" OnClick="StartTimerButton" Text="Έναρξη χρόνου και εμφάνιση θεωρίας" CssClass="btn btn-default" />
        <asp:Button runat="server" ID="StopTimer" OnClick="StopTimerButton" Text="Tερματισμός και αποθήκευση χρόνου" Enabled="false" CssClass="btn btn-default" />
        <br />
        <br />
        <div id="theory" runat="server" visible="false">
            <asp:Label runat="server" Font-Size="Large">Διαλέξτε σελίδα: </asp:Label>
            <asp:Button runat="server" ID="PresentTensesButton" Text="Present Tenses" OnClick="ShowPresent" class="btn btn-default" />
            <asp:Button runat="server" ID="PastTensesButton" Text="Past Tenses" OnClick="ShowPast" class="btn btn-default" />
            <asp:Button runat="server" ID="FutureTensesButton" Text="Future Tenses" OnClick="ShowFuture" class="btn btn-default" />
            <div runat="server" id="PresentTenses" visible="false">
                <h2>Present Tenses</h2>
                <h3>Grammar reference</h3>
                <!-- A section-->
                <h4>Μέρος A) Μορφή</h4>
                <asp:Table ID="Table1" runat="server" CellPadding="10" GridLines="Both" HorizontalAlign="Left" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Tense</b></asp:TableCell>
                        <asp:TableCell><b>Affirmative, question, negative</b></asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>Present Simple</b></asp:TableCell>
                        <asp:TableCell>The postman always <b>comes</b> at eleven. <br />
                            <b>Does</b> the postaman always <b>come</b> at eleven? <br />
                            The postman <b>doesn't</b> always <b>come</b> at eleven.
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>Present continuous</b></asp:TableCell>
                        <asp:TableCell>They <b>are sleeping</b> at the moment. <br />
                            <b>Are</b> they <b>sleeping</b> at the moment? <br />
                            They <b>aren't sleeping</b> at the moment.
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>Present perfect simple</b></asp:TableCell>
                        <asp:TableCell>We <b>have known</b> them since last year. <br />
                            <b>Have</b> we <b>known</b> them since last year? <br />
                            We <b>haven't known</b> them since last year.
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>Present perfect continuous</b></asp:TableCell>
                        <asp:TableCell>She <b>has been studying</b> English for six months. <br />
                            <b>Has</b> she <b>been studying</b> English for six months? <br />
                            She <b>hasn't been studying</b> English for six months.
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos A section-->
                <asp:Image runat="server" ImageUrl="~/Images/present tenses.jpg" ImageAlign="Right" Width="500px"/><br />
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <!-- B section-->
                <h4>Μέρος B) Present simple και present continuous</h4>
                <asp:Table ID="Table2" runat="server" CellPadding="10" GridLines="Both" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Present simple</b><br />
                            Χρησιμοποιούμε τον <b>present simple:</b>
                        </asp:TableCell>
                        <asp:TableCell><b>Present continuous</b><br />
                            Χρησιμοποιούμε τον <b>present continuous:</b>
                        </asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            ▶ για να αναφερθούμε σε κάτι που γίνεται συχνά, σε κάποια συνήθεια.<br />
                            <b>I usually do my homework immediately after school.</b>
                        </asp:TableCell>
                        <asp:TableCell>
                            ▶ για να περιγράψουμε κάτι που γίνεται τώρα, τη στιγμή που μιλάμε <br />
                            <b>Be quiet! I'm doing my homework.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να αναφερθούμε σε μόνιμες καταστάσεις.<br />
                            <b>They live in England.</b>
                        </asp:TableCell>
                        <asp:TableCell>▶ για να περιγράψουμε προσωρινές καταστάσεις και πράξεις. <br />
                            <b>She's staying with her grandparents this week.</b> 
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να μιλήσουμε για γενικές αλήθειες ή φυσικούς νόμους.<br />
                            <b>Water boils at 100 Celsius.</b>
                        </asp:TableCell>
                        <asp:TableCell>▶ για να περιγράψουμε καταστάσεις που αλλάζουν, που εξελίσσονται.<br />
                            <b>Prices are rising very fast these days.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ όταν αναφερόμαστε σε προγράμματα(κινηματογράφου, θεάτρου κλπ.) ή δρομολόγια (πλοίων, τρένων κλπ.)<br/>
                            <b>The film starts at 8.00pm.</b><br />
                            <b>Our plane leaves at half past six.</b>
                        </asp:TableCell>
                        <asp:TableCell>▶ για να περιγράψουμε κάτι που έχουμε προγραμματίσει να κάνουμε στο άμεσο μέλλον. <br />
                            <b>We're leaving for France tomorrow.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να περιγράψουμε ένα αθλητικό γεγονός ή για να αφηγηθούμε την ιστορία μιας ταινίας ή ενός βιβλίου.<br />
                            <b>Andy Wilson scores his first goal!</b><br />
                            <b>Seasn Jameson, who plays the part of the detective,dies in a car crash.</b>
                        </asp:TableCell>
                        <asp:TableCell>▶ για να περιγράψουμε πράξεις που επαναλαμβάνονται και είναι ενοχλητικές. Σε αυτή την περίπτωση σηνήθως χρησιμοποιούμε επιρρήματα όπως <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">always, constantly.</asp:Label> κλπ.<br />
                            <b>You're always borrowing my things without asking!</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">Time markers</asp:Label><br />
                            Κάποιες από τις χρονικές εκφράσεις που χρησιμοποιούμε συχνά με τον <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">present simple</asp:Label> είναι:<br />
                            ▶ επιρρήματα συχνότητας <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">(adverbs of frequency): alwaysm usually, often, frequently,sometimes,occasionally, never, rarely, seldom</asp:Label> κλπ.<br/>
                            ▶ άλλες χρονικές εκφράσεις όπως: <b>every day/week/month, on Mondays/Tuesdays, at the weekend, once a week/year</b> κλπ.
                        </asp:TableCell>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">Time markers</asp:Label> <br />
                            Κάποιες από τις χρονικές εκφράσεις που χρησιμοποιούμε συχνά με τον <b>present continuous</b> είναι: <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">now, at the moment, at present, today, these days, this month/week</asp:Label> κλπ.
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos B section-->
                <!-- arxh C section-->
                <h4>Μέρος C</h4>
    
                <asp:Table ID="Table3" runat="server" CellPadding="10" GridLines="Both" width="600px" HorizontalAlign="left" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell ColumnSpan="2"><b>Stative verbs</b>
                        </asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="2">Υπάρχουν κάποια ρήματα που συνήθως δε σχηματίζουν χρόνους διαρκείας (<b>continuous forms</b>), γιατί περιγράφουν καταστάσεις (<b>states</b>) και όχι πράξεις (<b>actions</b>). Κάπια από τα ρήματα αυτά είναι: <br />
                ▶ ρήματα αισθήσεων: <b>see, hear, smell, feel, taste, sound, look, seem, notice, appear.</b> <br />
                ▶ ρήματα αντίληψης: <b>know, understand, think, believe, remember, forget, expect</b> κλπ.<br />
                ▶ ρήματα που εκφράζουν αρέσκεια ή δυσαρέσκεια: <b>like, dislike, love, hate, prefer</b> κλπ.<br />
                ▶ άλλα ρήματα, όπως: <b>be,belong,have,need, want, cost, mean, wish, hope, include, contain, weigh</b> κλπ.<br />
                <br />
                Κάποια από τα παραπάνω ρήματα μπορούν να χρησιμοποιηθούν και με χρόνους διαρκείας. Στην περίπτωση αυτή έχουν διαφορετική σημασία, αφού περιγράφουν πράξεις και όχι καταστάσεις. Ας συγκρίνουμε τα παρακάτω παραδείγματα.
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><b>Have you seen the film?</b><br />
                            (see = βλέπω)
                        </asp:TableCell>
                        <asp:TableCell><b>I'm seeing Lucy after school.</b> <br />
                            (see = συναντώ)
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><b>Her skin feels soft.</b><br />
                            (feel = έχει (απαλή) υφή)
                        </asp:TableCell>
                        <asp:TableCell><b>She's feeling his face to see if it's hot.</b> <br />
                            (feel = αγγίζω)
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><b>Sugar tastes sweet.</b><br />
                            (taste = έχει γεύση)
                        </asp:TableCell>
                        <asp:TableCell><b>She's tasting the sauce.</b> <br />
                            (taste = δοκιμάζω)
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><b>These flowers smell nice.</b><br />
                            (smell = έχει μυρωδιά)
                        </asp:TableCell>
                        <asp:TableCell><b>She's smelling the flowers.</b> <br />
                            (smell = μυρίζω)
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><b>I think he's right.</b><br />
                            (think = πιστεύω, νομίζω)
                        </asp:TableCell>
                        <asp:TableCell><b>I'm thinking about my new job.</b> <br />
                            (think = σκέφτομαι)
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><b>Jack has two brothers.</b><br />
                            (have = έχω)
                        </asp:TableCell>
                        <asp:TableCell><b>Jack is having a bath.</b> <br />
                            (have = κάνω(μπάνιο))
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><b>That picture looks nice.</b><br />
                            (look = φαίνομαι)
                        </asp:TableCell>
                        <asp:TableCell><b>He's looking at the picture.</b> <br />
                            (look = Κοιτάζω)
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><b>He appears to be very friendly.</b><br />
                            (appear = φαίνομαι, δίνω την εντύπωση)
                        </asp:TableCell>
                        <asp:TableCell><b>He is appearing as Hamlet for the first time.</b> <br />
                            (appear = εμφανίζομαι)
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><b>He's selfish.</b><br />
                            (be = είμαι)
                        </asp:TableCell>
                        <asp:TableCell><b>He's being selfish.</b> <br />
                            (be = συμπεριφέρομαι, στη συγκεκριμένη περίπτωση)
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="2">
                            Όταν μιλάμε για την εμφάνιση ή τα συναισθήματα κάποιου σε μια συγκεκριμένη περίπτωση, τα ρήματα <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">look</asp:Label> και <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">feel</asp:Label> μπορούν να χρησιμοποιηθούν με χρόνους απλούς ή διαρκείας, χωρίς να αλλάζει το νόημα της πρότασης. <br />
                <b>You look / are looking great!</b><br />
                <b>I feel / am feeling tired.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <asp:Image runat="server" ImageUrl="~/Images/Stative-Verbs.jpg" ImageAlign="Right" Width="400px" />
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <!--Tip 1 -->
                <asp:Table ID="Table8" runat="server" CellPadding="10" GridLines="Both" Width="350px" HorizontalAlign="right" BorderStyle="Dashed" BorderWidth="2px" BackColor="#E0ECF8">
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true" Font-Size="XX-Large">Tip</asp:Label><br />
                           Τα επιρρήματα συχνότητας μπαίνουν συνήθως πριν από το κύριο ρήμα.<br />
                           <b>He usually goes to bed early.<br />
                           He doesn't usually go to bed early.<br />
                           Does he usually go to bed early? <br /></b>
                            <br />
                           Οι υπόλοιπες χρονικές εκφράσεις μπαίνουν συνήθως στο τέλος ή στην αρχή της πρότασης.<br />
                           <b>She goes to bed early every day.<br />
                           In the mornings we have some cereal for breakfast.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <!--telos C section-->

    


                <br />
                <!-- arxh D section-->
                <h4>Μέρος D</h4>
                <asp:Table ID="Table4" runat="server" CellPadding="10" GridLines="Both" Width="500px" HorizontalAlign="Left" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Present perfect simple</b><br />
                            Χρησιμοποιούμε τον <b>present perfect simple:</b>
                        </asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για μια πράξη που συνέβη στο παρελθόν σε απροσδιόριστο χρόνο. Δεν αναφέρουμε πότε συνέβη η πράξη γιατί δεν το γνωρίζουμε ή δεν μας ενδιαφέρει.<br /> <b>I've met Sarah. She's a nice girl.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να περιγράψουμε μια πράξη που συνέβη στο παρελθόν αλλά που επηρεάζει ή έχει ένα ορατό αποτέλεσμα στο παρόν.<br /> <b>Dad has washed the car. It's clean.</b> <br />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να περιγράψουμε μια πράξη που ξεκίνησε στο παρελθόν και συνεχίζεται στο παρόν.<br /> <b>Mr Allan has been a teacher for twenty-five years.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να αναφερθούμε σε μια πράξη που έγινε σε κάποια χρονική περίοδο που δεν έχει τελειώσει ακόμη.<br /> <b>I've read three books this month.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να μιλήσουμε για εμπειρίες που είχαμε ή δεν είχαμε στη ζωή μας.<br /> <b>Have you ever met anyone famous? <br />She's never had an accident before. <br />This is the funniest story I've ever heard. <br />This is the first time I've seen a lion.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να αναφερθούμε σε μια πράξη που μόλις ολοκληρώθηκε. Σε αυτή την περίπτωση συνήθως χρησιμοποιούμε <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">just</asp:Label>. <br /> <b>We have just had lunch.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να περιγράψουμε μια πράξη που συνέβη στο παρελθόν αλλά που επηρεάζει ή έχει ένα ορατό αποτέλεσμα στο παρόν.<br /><b>Dad has washed the car. It's clean.</b> <br />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <asp:Table ID="Table5" runat="server" CellPadding="10" GridLines="Both" Width="500px" HorizontalAlign="Right" BackColor="#E0ECF8">
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">Time markers</asp:Label><br />
                            Κάποιες από τις χρονικές εκφράσεις που χρησιμοποιούμε συχνά με τον <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">present perfect simple</asp:Label> είναι:
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">• for:</asp:Label> <b>We've known them for years.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">• since:</asp:Label> <b>We've known them since 1992.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">• already:</asp:Label> <b>It's only four o'clock,but he's already left.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">• yet:</asp:Label> <b>Have you finished yet? They haven't called us yet.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">• just:</asp:Label> <b>She isn't here. She has just left the building.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">• ever:</asp:Label> <b>Have you ever eaten frog's legs before?</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">• never:</asp:Label> <b>I have never hears that singer.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">• always:</asp:Label> <b>She has always wanted to visit Spain.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">• lately/recently:</asp:Label> <b>We haven't seen them lately.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">• so far:</asp:Label> <b>They haven't made any mistakes so far.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">• today/this morning:</asp:Label> <b>I ahve had two cups of coffee this morning.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">• How long...?:</asp:Label> <b>How long have you been here?</b>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <!-- telos D section-->
                <!-- arxh E section-->
                <h4>Μέρος Ε</h4>
                <asp:Table ID="Table6" runat="server" CellPadding="10" GridLines="Both" Width="500px" HorizontalAlign="left" BackColor="#E0ECF8">
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">Have gone to - have been to </asp:Label><br /><br />
                            Χρησιμοποιούμε <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">have been to</asp:Label> για να αναφέρουμε πως κάποιος πήγε κάπου στο παρελθόν,αλλά τώρα έχει επιστρέψει.<br /><br />
                Χρησιμοποιούμε <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">have gone to</asp:Label> για να αναφέρουμε πως κάποιος έχει πάει κάπου και βρίσκεται ακόμη εκεί, δεν έχει επιστρέψει.<br />
                <b>Sarah has been to Japan. (Έχει επιστρέψει.)</b><br />
                <b>Sarah has gone to Japan. (Βρίσκεται ακόμη εκεί.)</b>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!--Tip 2 -->
                <asp:Table ID="Table7" runat="server" CellPadding="10" GridLines="Both" Width="350px" HorizontalAlign="right" BorderStyle="Dashed" BorderWidth="2px" BackColor="#E0ECF8">
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true" Font-Size="XX-Large">Tip</asp:Label><br />
                            Το <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">already</asp:Label> και το <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">just</asp:Label> μπαίνουν πριν από την παθητική μετοχή.<br />
                Το <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">yet</asp:Label> μπαίνει στο τέλος της πρότασης.<br />
                Το <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">for</asp:Label> αναφέρεται στη διάρκεια μιας πράξης.<br />
                Το <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">since</asp:Label> αναφέρεται στη χρονική στιγμή που ξεκίνησε μια πράξη.
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos E section-->
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <!-- arxh F section-->
                <h4>Μέρος F</h4>
                <asp:Table ID="Table9" runat="server" CellPadding="10" GridLines="Both" Width="500px" HorizontalAlign="Left" BackColor="#E0ECF8">        
                   <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Present perfect continuous</b><br />
                            Χρησιμοποιούμε τον <b>present perfect continuous:</b>
                        </asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            ▶ για μια πράξη που ξεκίνησε στο παρελθόν και επαναλαμβάνεται ή συνεχίζεται ως τώρα. <br /><b>I've been learning English for six years.</b><br />
                            ▶ για μια πράξη που μόλις ή πρόσφατα ολοκληρώθηκε. Συνήθως υπάρχει κάποια ένδειξη στο παρόν ότι συνέβη η πράξη αυτή.<br /> <b>His clothes are dirty. he's been repairing the car.</b><br /><br />
                            <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">Time markers</asp:Label><br />
                            Κάποιες από τις χρονικές εκφράσεις που χρησιμοποιούμε συχνά με τον present perfect continuous είναι: <b>How long? for, since, recently, lately.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos F section-->
                <asp:Image runat="server" ImageUrl="~/Images/present-perfect-present-perfect-continuous-SIMPLE-WEB-page-001-1024x724 (1).jpg" ImageAlign="Right" Width="650"/>
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <!-- arxh G section-->
                <h4>Μέρος G) Present perfect simple και present perfect continuous</h4>
                <asp:Table ID="Table10" runat="server" CellPadding="10" GridLines="Both" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Present perfect simple</b>
                        </asp:TableCell>
                        <asp:TableCell><b>Present perfect continuous</b>
                        </asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            ▶ Με τον present perfect simple, αναφερόμαστε σε μια πράξη που έχει ολοκληρωθεί. Αυτό που μας ενδιαφέρει περισσότερο είναι το αποτέλεσμα αυτής της πράξης.<br />
                            <b>She has washed the car. It's clean now.</b>
                        </asp:TableCell>
                        <asp:TableCell>
                            ▶ Με τον present perfect continuous, η πράξη μπορεί να ολοκληρωθεί, μπορεί όμως και όχι. Αυτό που μας ενδιαφέρει περισσότερο είναι η ίδια η πράξη και όχι το αν έχει ολοκληρωθεί.<br />
                            <b>She has been washing the car.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ Με τον present perfect simple δε μας ενδιαφέρει η διάρκεια, αλλά το ότι η πράξη έχει ολοκληρωθεί.<br />
                            <b>She has typed six letters today.</b>
                        </asp:TableCell>
                        <asp:TableCell>▶ Με τον present perfect continuous δίνουμε έμφαση στη διάρκεια της πράξης,η οποία συνεχίζεται στο παρόν.<br />
                            <b>She has been typing letters all morning and still has a lot to do.</b> 
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="2">Τα ρήματα work και live χρησιμοποιούνται με τον ίδιο τρόπο στον present perfect simple και στον present perfect continuous, χωρίς να υπάρχει διαφορά στο νόημα της πρότασης.<br/>
                            <b>We have lived /  have been living here since 1998.</b><br />
                            <b>He has worked / has been working at the office for six years.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos G section-->
            </div>
            <div runat="server" id="PastTenses" visible="false">
                <h2>Past Tenses</h2>
                <h3>Grammar reference</h3>
                <!-- A section-->
                <h4>Μέρος A) Μορφή</h4>
                <asp:Table ID="Table11" runat="server" CellPadding="10" GridLines="Both" HorizontalAlign="Left" Width="750" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b></b></asp:TableCell>
                        <asp:TableCell><b>Affirmative, question, negative</b></asp:TableCell>
                        <asp:TableCell><b>Time markers</b></asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>Past Simple</b></asp:TableCell>
                        <asp:TableCell>He <b>wrote</b> the letter on Monday. <br />
                            <b>Did</b> he <b>write</b> the letter on Monday? <br />
                            He <b>didn't</b> <b>write</b> the letter on Monday.
                        </asp:TableCell>
                        <asp:TableCell>yesterday, three hours ago,<br />last week, in 2001</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>Past continuous</b></asp:TableCell>
                        <asp:TableCell>She <b>was doing</b> her homework at 5:30. <br />
                            <b>Was</b> she <b>doing</b> her homework at 5:30.?<br />
                            She <b>wasn't doing</b> her homeworkat 5:30.
                        </asp:TableCell>
                        <asp:TableCell>while, as, all morning,<br />at seven o'clock, yesterday</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>Past perfect simple</b></asp:TableCell>
                        <asp:TableCell>They <b>have gone</b> to bed by ten o'clock. <br />
                            <b>Had</b> they <b>gone</b> to bed by ten o'clock? <br />
                            They <b>hadn't gone</b> to bed by ten o'clock.
                        </asp:TableCell>
                        <asp:TableCell>after, before, when, as soon as, <br />until, already, just,by, by the time</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>Past perfect continuous</b></asp:TableCell>
                        <asp:TableCell>We <b>had been working</b> for hours. <br />
                            <b>Had</b> we <b>been working</b> for hours?<br />
                            We <b>hadn't been working</b> for hours.
                        </asp:TableCell>
                        <asp:TableCell>since, for, all day</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>used to</b></asp:TableCell>
                        <asp:TableCell>I <b>used to go</b> to the cinema every Saturday. <br />
                            <b>Did</b> I <b>use to go</b> to the cinema every Saturday?<br />
                            I <b>didn't use to goy</b> to the cinema every Saturday.
                        </asp:TableCell>
                        <asp:TableCell>years ago, in the past, when I was young,<br /> always, often, sometimes, never</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>would</b></asp:TableCell>
                        <asp:TableCell>They <b>would sing</b> and <b>dance</b>. <br />
                            <b>Would</b> they <b>sing</b> and <b>dance</b>?<br />
                            They <b>would't sing</b> and <b>dance</b>.
                        </asp:TableCell>
                        <asp:TableCell>in the past,when I was young,<br /> always, usually, often, sometimes, never</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos A section-->
                <br />
                <asp:Image runat="server" ImageUrl="~/Images/past tenses 2.jpg" ImageAlign="Right" Width="400px"/>
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <!--Tip 1 -->
                <asp:Table ID="Table14" runat="server" CellPadding="10" GridLines="Both" Width="350px" BorderStyle="Dashed" BorderWidth="2px" HorizontalAlign="Right" BackColor="#E0ECF8">
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true" Font-Size="XX-Large">Tip</asp:Label><br />
                           Το <b>when</b> συνήθως ακολουθείται από past simple. <br />
                           To <b>while</b> και το <b>as</b> συνήθως ακολουθούνται από <b>past continuous</b>.
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

                <h4>Μέρος B & C</h4>
                <asp:Table ID="Table12" runat="server" CellPadding="10" GridLines="Both" Width="550px" HorizontalAlign="Left" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Past simple</b><br />
                            Χρησιμοποιούμε τον <b>past simple:</b>
                        </asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να περιγράψουμε μια πράξη που έγινε σε κάποια συγκεκριμένη στιγμή στο παρελθόν.<br /> <b>They left ten minutes ago.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ όταν αναφερόαμστε σε συνήθειες ή πράξει που συνέβαιναν συχνά στο παρελθόν.<br /> <b>He travelled a lot when he was younger.</b> <br />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να αναφερθούμε σε καταστάσεις που ίσχυαν στο παρελθόν.<br /> <b>We lived in that house five years ago.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να περιγράψουμε πράξεις που έγιναν διαδοχικά, η μία μετά από την άλλη στο παρελθόν.<br /> <b>She got up, had breakfast and went out.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                <asp:Table ID="Table13" runat="server" CellPadding="10" GridLines="Both" Width="550px" HorizontalAlign="Right" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Past continuous</b><br />
                            Χρησιμοποιούμε τον <b>past continuous:</b>
                        </asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να περιγράψουμε μια πράξη που βρισκόταν σε εξέλιξη σε κάποια συγκεκριμένη στιγμή στο παρελθόν.<br /> <b>I was doing my homework at eight o'clock yesterday evening.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να αναφερθούμε σε δύο ή περισσότερες πράξεις που συνέβαιναν συγχρόνως στο παρελθόν.<br /> <b>Mum was watching TV while dad was cooking dinner.</b> <br />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να περιγράψουμε μια πράξη που διακόπηκε από μια άλλη στο παρελθόν.<br />
                            Χρησιμοποιούμε τον past continuous για την πράξη που είχε μεγαλύτερη διάρκεια, και τον past simple για τη μικρότερη σε διάρκεια πράξη,αυτή που διέκοψε την πρώτη.<br /><b>I was sleeping when the phone rang. <br />While she was drying the glasses, she dropped one.<br />As they were walking in the forest, they saw a deer.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ στην αρχή μιας ιστορίας, για να περιγράψουμε το γενικό κλίμα,το σκηνικό, πριν ξεκινήσουμε την αφήγηση.<br /> <b>It was a beautiful morning. The sun was shining and the birds were singing.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <!--Tip 2 -->
                <asp:Table ID="Table15" runat="server" CellPadding="10" GridLines="Both" Width="450px" BorderStyle="Dashed" HorizontalAlign="Left" BorderWidth="2px" BackColor="#E0ECF8">
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true" Font-Size="XX-Large">Tip</asp:Label><br />
                           Όταν αναφερόμαστε σε δύο πράξεις που συνέβαιναν ταυτόχρονα, χρησιμοποιούμε μόνο το <b>while</b> και όχι  <b>when</b> ή <b>as</b>.
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br /><br /><br /><br /><br /><br /><br />
                <!-- D section-->
                <h4>Μέρος D) Past simple και present perfect</h4>
                <asp:Table ID="Table16" runat="server" CellPadding="10" GridLines="Both" Width="600" HorizontalAlign="Left" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Past simple</b><br />
                            Χρησιμοποιούμε τον <b>past simple:</b>
                        </asp:TableCell>
                        <asp:TableCell><b>Present perfect</b><br />
                            Χρησιμοποιούμε τον <b>present perfect:</b>
                        </asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            ▶ για μια πράξη που συνέβη σε μια συγκεκριμένη στιγμή στο παρελθόν. Αναφέρουμε πότε συνέβη η πράξη.<br />
                            <b>The game finished at 8.30.</b>
                        </asp:TableCell>
                        <asp:TableCell>
                            ▶ για μια πράξη που συνέβη σε απροσδιόριστο χρόνο στο παρελθόν. Δεν αναφέρουμε πότε συνέβη η πράξη γιατί δεν το γνωρίζουμε ή δε μας ενδιαφέρει. <br />
                            <b>The game has finished.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για μια πράξηπου ξεκίνησε και ολοκληρώθηκε στο παρελθόν.<br />
                            <b>He lived here for two years.</b><br />(Δε μένει εδώ πια.)
                        </asp:TableCell>
                        <asp:TableCell>▶ για μια πράξη που ξεκλινησε στο παρελθόν και συνεχίζεται στο παρόν. <br />
                            <b>He has lived here for two years.</b><br />(Μένει εδώ ακόμα.) 
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για μια πράξη που συνέβη στο παρελθόν, σε μια χρονική περίοδο που έχει τελειώσει.<br />
                            <b>I drank three cups of coffee this morning.</b><br />(Δεν είναι πια πρωί.)
                        </asp:TableCell>
                        <asp:TableCell>▶ για μια πράξη που συνέβη στο παρελθόν, σε μια χρονική περίοδο που δεν έχει τελειώσει ακόμη.<br />
                            <b>Ι have drunk three cups of coffee this morning.</b><br />(Είναι ακόμη πρωί.)
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            Όταν χρησιμοποιούμε <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">past simple</asp:Label> αναφερόμαστε αποκλειστικά στο παρελθόν.
                        </asp:TableCell>
                        <asp:TableCell>
                            Όταν χρησιμοποιούμε <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">present perfect</asp:Label>, οι πράξεις που περιγράφουμε συνδέονται με το πραόν.
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos D section-->
                <asp:Image runat="server" ImageAlign="Right" ImageUrl="~/Images/Present-perfect-vs-Past-simple-infographic-1.jpg" Width="550"/>
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br  />
                <!--Tip 3 -->
                <asp:Table ID="Table17" runat="server" CellPadding="10" GridLines="Both" Width="350px" BorderStyle="Dashed" BorderWidth="2px" BackColor="#E0ECF8">
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true" Font-Size="XX-Large">Tip</asp:Label><br />
                            Θυμηθείτε τα <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">time markers</asp:Label> που χρησιμοποιούνται με τον <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">past simple</asp:Label> και τον 
                            <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">present perfect <br />Past simple: yesterday, ago, last week, in 1492 <br />Present perfect simple: just, yet, already, for, since, ever ,never, so far, up to now</asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br /><br />
                <h4>Μέρος E</h4>
                <asp:Table ID="Table18" runat="server" CellPadding="10" GridLines="Both" HorizontalAlign="Left" Width="600px" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Used to</b>
                    
                        </asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ Χρησιμοποιούμε το <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">used</asp:Label> to για να περιγράψουμε πράξεις που συνηθίζαμε να κάνουμε (<asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">repeated past actions</asp:Label>) στο παρελθόν ή καταστάσεις (<asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">states</asp:Label>) που ίσχυαν στο παρελθόν αλλά δεν ισχύουν πια.<br /> <b>I used to play tennis when I was at school.</b><br />(repeated past action)<br /><b>We used to live in London when I was young.<br /></b>(state)
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ Συνήθως, μπορούμε να αντικαταστήσουμε το <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">used to</asp:Label> με τον <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">past simple</asp:Label>, χωρίς να αλλάζει το νόημα της πρότασης.<br /> <b>I played tennis when I was at school.<br />We lived in London when I was young.</b> <br />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ Όταν όμως περιγράφουμε μια συγκεκριμένη πράξη που συνέβη σε κάποια συγκεκριμένη στιφμή στο παρελθόν, χρησιμοποιούμε μόνο <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">past simple</asp:Label> και όχι <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">used to</asp:Label><br />
                            <b>I got up late yesterday. <br /><asp:Label runat="server" style="text-decoration: line-through;">I used to get up late yesterday.</asp:Label> ✗</b>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <asp:Image runat="server" ImageUrl="~/Images/usedtowould.JPG" Width="550" ImageAlign="Right" />
                <br /><br />
                <h4>Μέρος F</h4>
                <asp:Table ID="Table19" runat="server" CellPadding="10" GridLines="Both" Width="600px" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Would</b>
                        </asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ Μπορούμε να χρησιμοποιήσουμε το <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">would</asp:Label> με τον ίδιο τρόπο όπως το <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">used to</asp:Label> για να περιγράψουμε πράξεις που συνηθίζαμε να κάνουμε στο παρελθόν (<asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">repeated past actions</asp:Label>)<br /> <b>When we were young, my sister and I would fight all the time.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ Όταν όμως περιγράφουμε καταστάσεις (<asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">states</asp:Label>) και όχι πράξεις που ίσχυαν στο παρελθόν, χρησιμοποιούμε μόνο <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">used to</asp:Label> και όχι <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">would</asp:Label>.<br /> <b>Mr Wilson used to be a teacher. <br /><asp:Label runat="server" style="text-decoration: line-through;">Mr Wilson would be a teacher.</asp:Label> ✗</b>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br />
                <!--Tip 3 -->      
                <asp:Table ID="Table20" runat="server" CellPadding="10" GridLines="Both" Width="350px" BorderStyle="Dashed" BorderWidth="2px" HorizontalAlign="Left" BackColor="#E0ECF8">
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true" Font-Size="XX-Large">Tip</asp:Label><br />
                            Όταν αναφερόμαστε σε καταστάσεις και όχι σε επαναλαμβανόμενες πράξεις, χρησιμοποιούμε μόνο <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">used to</asp:Label> και όχι <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">would</asp:Label>
                        </asp:TableCell>            
                    </asp:TableRow>
                </asp:Table>
                <br /><br /><br /><br /><br /><br /><br />
                <!-- G section-->
                <h4>Μέρος G) Past perfect simple και past perfect continuous</h4>
                <asp:Table ID="Table21" runat="server" CellPadding="10" GridLines="Both" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Past perfect simple</b><br />
                            Χρησιμοποιούμε τον <b>past perfect simple:</b>
                        </asp:TableCell>
                        <asp:TableCell><b>Past perfect continuous</b><br />
                            Χρησιμοποιούμε τον <b>past perfect continuous:</b>
                        </asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            ▶ για να περιγράψουμε μια πράξη που συνέβη στο παρελθόν πριν από κάποια άλλη πράξη. Χρησιμοποιούμε <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">past perfect simple</asp:Label> για την πράξη που συνέβη πρώτη. Για εκείνη που συνέβη δεύτερη, χρησιμοποιούμε <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">past simple</asp:Label><br />
                            <b>By the time I arrived, Jack had already gone to bed.</b>
                        </asp:TableCell>
                        <asp:TableCell>
                            ▶ για να δώσουμε έμφαση στη διάρκεια μιας πράξης που συνέβη πριν από μια άλλη πράξη στο παρελθόν.<br />
                            <b>I found my keys yesterday. I had been looking for them for days.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να περιγράψουμε μια πράξη που συνέβη πριν από κάποια συγκεκριμένη χρονική στιγμή στο παρελθόν.<br />
                            <b>It was one o'clock in the morning. The guests had gone home.</b>
                        </asp:TableCell>
                        <asp:TableCell>▶ για να περιγράψουμε μια πράξη που συνέβη στο παρελθόν, είχε μεγάλη διάρκεια και το αποτέλεσμα της ήταν ορατό στο παρελθόν.<br />
                            <b>Her eyes were red. She had been crying.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">Time markers</asp:Label><br />
                            Κάποιες χρονικές εκφράσεις που χρησιμοποιούμε συχνά με τον <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">past perfect simple</asp:Label> είναι: <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">when, after, before, as soon as, until, just, already, by, by the time</asp:Label> κλπ.
                        </asp:TableCell>
                        <asp:TableCell>▶ <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">Time markers</asp:Label><br />
                            Κάποιες χρονικές εκφράσεις που χρησιμοποιούμε συχνά με τον <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">past perfect continuous</asp:Label> είναι: <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">since, for, before, until</asp:Label> κλπ.
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos G section-->
                <asp:Image runat="server" ImageUrl="~/Images/PAST-PERFECT-SIMPLE-WEB-page-001-1-1024x724.jpg" Width="800"/>
                <!-- H section-->
                <h4>Μέρος H</h4>
                <asp:Table ID="Table22" runat="server" CellPadding="10" GridLines="Both" Width="600" HorizontalAlign="Left" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Past time clauses</b>
                        </asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            Χρησιμοποιούμε τον <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">past perfect simple</asp:Label> για μια πράξη που είχε ολοκληρωθεί πριν από μια άλλη πράξη που συνέβη στο παρελθόν. Για τη δεύτερη πράξη χρησιμοποιούμε <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">past simple</asp:Label>.<br />
                            <br />
                            Όταν όμως αναφερόμαστε σε δύο διαδοχικές πράξεις, δηλαδή όταν η δεύτερη πράξη έγινε αμέσως μετά την πρώτη, τότε μπορούμε να χρησιμοποιλησουμε τον <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">past simple</asp:Label> και για τις δύο. Το νόημα παραμένει το ίδιο.
                            <b>I had locked the door before I left the house.<br />I locked th edoor before I left the house.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos H section-->
                <br /><br />
                <!-- Tip 4 -->
                <asp:Table ID="Table23" runat="server" CellPadding="10" GridLines="Both" Width="350px" BorderStyle="Dashed" BorderWidth="2px" HorizontalAlign="Right" BackColor="#E0ECF8">
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true" Font-Size="XX-Large">Tip</asp:Label><br />
                            Με τον <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">past perfect continuous</asp:Label>, δίνουμε έμφαση στη διάρκεια της πράξης.
                        </asp:TableCell>            
                    </asp:TableRow>
                </asp:Table>
                Επανάληψη
                <asp:Image runat="server" ImageUrl="~/Images/all-past-tenses-active-and-passive-mind-map-classroom-posters-grammar-drills-grammar-guides-wo_57410_1.jpg" Width="800"/>
                <br /><br /><br /><br /><br /><br /><br /><br /><br />
            </div>
            <div id="FutureTenses" runat="server" visible="false">
                <h2>Future Tenses</h2>
                <h3>Grammar reference</h3>
                <!-- A section-->
                <h4>Μέρος A) Μορφή</h4>
                <asp:Table ID="Table24" runat="server" CellPadding="10" GridLines="Both" HorizontalAlign="Left" Width="750" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b></b></asp:TableCell>
                        <asp:TableCell><b>Affirmative</b></asp:TableCell>
                        <asp:TableCell><b>Question</b></asp:TableCell>
                        <asp:TableCell><b>Negative</b></asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>will</b></asp:TableCell>
                        <asp:TableCell>I <b>will write</b> the letters.</asp:TableCell>
                        <asp:TableCell><b>Will</b> I <b>write</b> the letters?</asp:TableCell>
                        <asp:TableCell>I <b>won't write</b> the letters.</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>going to</b></asp:TableCell>
                        <asp:TableCell>You <b>are going to write</b> the letters.</asp:TableCell>
                        <asp:TableCell><b>Are</b> you <b>going to write</b> the letters?</asp:TableCell>
                        <asp:TableCell>You <b>aren't going to write</b> the letters.</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>Future continuous</b></asp:TableCell>
                        <asp:TableCell>He <b>will be writing</b> the letters.</asp:TableCell>
                        <asp:TableCell><b>Will</b> he <b>be writing</b> the letters?</asp:TableCell>
                        <asp:TableCell>He <b>won't be writing</b> the letters.</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>Future perfect simple</b></asp:TableCell>
                        <asp:TableCell>She <b>will have written</b> the letters.</asp:TableCell>
                        <asp:TableCell><b>Will</b> she <b>have written</b> the letters?</asp:TableCell>
                        <asp:TableCell>She <b>won't have written</b> the letters.</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>Future perfect continuous</b></asp:TableCell>
                        <asp:TableCell>They <b>will have been writing</b> the letters.</asp:TableCell>
                        <asp:TableCell><b>Will</b> they <b>have been writing</b> the letters?</asp:TableCell>
                        <asp:TableCell>They <b>won't have been writing</b> the letters.</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos A section-->
                <br />
                <asp:Image runat="server" ImageUrl="~/Images/future tenses.jpg" ImageAlign="Right" Width="400px"/>
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <!-- B section-->
                <h4>Μέρος B,C,D,E) Will, Going to</h4>
                <asp:Table ID="Table25" runat="server" CellPadding="10" GridLines="Both" HorizontalAlign="Left" Width="550" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Will</b><br />
                            Χρησιμοποιούμε το <b>will</b></asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να κάνουμε κάποια πρόβλεψη,να πούμε τι πιστεύουμε πως θα συμβεί στο μέλλον. Το χρησιμοποιούμε συνήθως με εκφράσεις όπως <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">I think, I believe, I bet, I expect, I am sure/afraid, I suppose, I hope</asp:Label>, ή επιρρήματα όπως <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">probably, perhaps, possibly, certainly</asp:Label> κλπ.<br />
                            <b>I'm sure she'll pass the exam.<br />
                                I'll probably be at school early tomorrow morning.
                            </b></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για αποφάσεις που παίρνουμε αυθόρμητα τη στιγμή που μιλάμε.<br />
                            <b>The phone's ringing. I'll answer it.</b></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να προσφέρουμε τη βοήθεια μας σε κάποιον.<br />
                            <b>I'll help you with your homework.</b></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να κάνουμε μια υπόσχεση.<br />
                            <b>I promise I won't be late.</b></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να ζητήσουμε από κάποιον να κάνει κάτι για εμάς.<br />
                            <b>Will you open the door for me?</b></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να προειδοποιήσουμε κάποιον για κάτι.<br />
                            <b>Be careful! You'll hurt yourself with that knife.</b></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να μιλήσουμε για κάτι που θα συμβεί σίγουρα στο μέλλον γιατί είναι αναπόφευκτο, δεν μπορούμε να το αλλάξουμε ή ελέγχεται από εξωτερικούς παράγοντες.<br />
                            <b>The sun will rise at 6.35 tomorrow.<br />
                                The temperature will drop during the weekend.</b></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos B section-->
                <!-- C section-->
                <asp:Table ID="Table26" runat="server" CellPadding="10" GridLines="Both" HorizontalAlign="Right" Width="550" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Going to</b><br />
                            Χρησιμοποιούμε το <b>going to</b></asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ όταν αναφερόμαστε σε μελλοντικά σχέδια, σε κάτι που έχουμε σκοπό να κάνουμε στο μέλλον.<br />
                            <b>We're going to buy a new car next month.</b></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ όταν γνωρίζουμε πως κάτι πρόκειται να συμβεί στο μέλλον γιατί υπάρχει στο παρόν κάτι που μας το δείχνει, μια ένδειξη.<br />
                            <b>Look at those clouds. It's going to rain.</b></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos C section-->
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <!-- D section-->
                <asp:Table ID="Table27" runat="server" CellPadding="10" GridLines="Both" HorizontalAlign="Right" Width="550" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Present Continuous</b></asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>Χρησιμοποιούμε τον <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">present continuous</asp:Label> για να αναφερθούμε σε κάτι που έχουμε ήδη προγραμματίσει να κάνουμε στο άμεσο μέλλον. Είμαστε σίγουροι πως η πράξη για την οποία μιλάμε θα συμβεί.<br />
                            <b>We're flying to London tomorrow.</b></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos D section-->
                <br /><br /><br /><br /><br /><br /><br /><br />
                <!-- E section-->
                <asp:Table ID="Table28" runat="server" CellPadding="10" GridLines="Both" HorizontalAlign="Right" Width="550" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Present simple</b></asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>Μπορούμε να χρησιμοποιήσουμε τον <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">present simple</asp:Label> για το μέλλον, όταν αναφερόμαστε σε προγράμματα (κινηματογράφων, θεάτρων κλπ.) ή σε δρομολόγια (πλοίων, τρένων κλπ.).<br />
                            <b>Our bus leaves at 6.30.</b><br />
                            <b>The play finishes at eleven o'clock.</b>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos E section-->
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <!--Tip 1 -->
                <asp:Table ID="Table29" runat="server" CellPadding="10" GridLines="Both" Width="450px" BorderStyle="Dashed" HorizontalAlign="Left" BorderWidth="2px" BackColor="#E0ECF8">
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true" Font-Size="XX-Large">Tip</asp:Label><br />
                           Θυμηθείτε: <br />
                           <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">Will</asp:Label> για να κάνουμε γενικές προβλέψεις,να πούμε τι πιστεύουμε πως θα γίνει στο μέλλον.<br />
                           <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">Going to</asp:Label> για να κάνουμε προβλέψεις όταν είμαστε σίγουροι πως κάτι θα συμβεί στο μέλλον γιατί υπάρχει μια ένδειξη στο παρόν.
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!--Tip 2 -->
                <asp:Table ID="Table30" runat="server" CellPadding="10" GridLines="Both" Width="450px" BorderStyle="Dashed" HorizontalAlign="Center" BorderWidth="2px" BackColor="#E0ECF8">
                    <asp:TableRow>
                        <asp:TableCell><asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true" Font-Size="XX-Large">Tip</asp:Label><br />
                           Θυμηθείτε: <br />
                           <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">Present continuous</asp:Label> για να αναφερθούμε σε κάτι που έχουμε ήδη προγραμματίσει να κάνουμε στο μέλλον.<br />
                           <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">Present simple</asp:Label> για να αναφερθούμε σε προγράμματα (θεάτρων,κινηματογράφων) ή δρομολόγια (τρένων, αεροπλάνων κλπ.)
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <asp:Image runat="server" ImageUrl="~/Images/future_tensesgoignto will presentcont presentsimpel.jpg" Width="750"/>
                <br /><br />
                <!-- F section-->
                <h4>Μέρος F,G,H) Future continuous, Future perfect simple, Future perfect continuous</h4>
                <asp:Table ID="Table31" runat="server" CellPadding="10" GridLines="Both" HorizontalAlign="Left" Width="550" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Future continuous</b><br />
                            Χρησιμοποιούμε τον <b>future continuous</b></asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να αναφερθούμε σε μια πράξη η οποία θα βρίσκεται σε εξέλιξη σε κάποια συγκεκριμένη στιγμή στο μέλλον.<br />
                            <b>At 9.30 tomorrow morning, we'll be travelling to Manchester.</b></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να ρωτήσουμε κάποιον για τα μελλοντικά του σχέδια, ιδιαίτερα όταν θέλουμε να κάνει κάτι για εμάς.<br />
                            <b>- Will you be passing the library on your way home?<br />
                                - Yes. Why?<br />
                                - Could you return this book for me?</b></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>▶ για να αναφερθούμε σε μια πράξη που θα γίνει σίγουρα στο μέλλον, είτε γιατί αποτελεί μέρος κάποιου προγράμματος είτε γιατί είναι μια πράξη ρουτίνας.<br />
                            <b>I'll be seeing him tomorrow. We always meet on Mondays.</b></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos F section-->
                <!-- G section-->
                <asp:Table ID="Table32" runat="server" CellPadding="10" GridLines="Both" HorizontalAlign="Right" Width="550" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Future perfect simple</b></asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>Χρησιμοποιούμε τον <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">future perfect simple</asp:Label> για να αναφερθούμε σε μια πράξη που θα έχει ήδη ολοκληρωθεί πριν από κάποια συγκεκριμένη στιγμή στο μέλλον.<br />
                            <b>I will have finished this book by next week.</b><br /><br />
                            Συχνά, ο <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">future perfect simple</asp:Label> χρησιμοποιείται με χρονικές εκφράσεις όπως: <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">by, by the time, before</asp:Label> κλπ.
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos G section-->
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <!-- Η section-->
                <asp:Table ID="Table33" runat="server" CellPadding="10" GridLines="Both" HorizontalAlign="Right" Width="550" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Future perfect continuous</b></asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>Χρησιμοποιούμε τον <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">future perfect continuous</asp:Label> για να αναφερθούμε σε μια πράξη που θα συνεχίζεται ως μια συγκεκριμένη στιγμή στο μέλλον.<br />
                            <b>She will have been working here for ten years in January.</b></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos Η section-->
                <br /><br /><br /><br /><br /><br /><br /><br />
                <!-- I section-->
                <h4>Μέρος I) Future time clauses</h4>
                <asp:Table ID="Table34" runat="server" CellPadding="10" GridLines="Both" Width="600px" HorizontalAlign="Left" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Future time clauses</b>
                        </asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>Οι προτάσεις που εισάγονται από χρονικούς συνδέσμους ονομάζονται  <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">time clauses</asp:Label>.<br />
                            Κάποιοι χρονικοί σύνδεσμοι μπου μπορούν να αναφέρονται στο μέλλον είναι: <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">when, before, after, as soon as, until, by, by the time</asp:Label>.<br />
                            Αν και αναφέρονται στο μέλλον, οι σύνδεσμοι αυτοί ακολουθούνται από <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">present simple</asp:Label><br />
                            <b>I'll give him your message when I see him.</b><br />
                            <b><asp:Label runat="server" style="text-decoration: line-through;">I'll give him your message when I will see him.</asp:Label> ✗</b>
                            <br /><br />
                            Ας δούμε άλλο ένα παράδειγμα.<br />
                            <b>By the time I get home, they will have gone to bed.</b><br />
                            Στην παραπάνω πρόταση, η <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">time clause</asp:Label> ακολουθείται από <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">present simple</asp:Label>, και η κύρια πρόταση (<asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">main clause</asp:Label>) είναι στον <asp:Label runat="server" ForeColor="#328fe7" Font-Bold="true">future perfect</asp:Label>.
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos I section-->
                <asp:Image runat="server" ImageUrl="~/Images/future-tense-mind-map-classroom-posters-clt-communicative-language-teach_57933_1.jpg" ImageAlign="Right" Width="500px"/>
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                <!-- J section-->
                <h4>Μέρος J) The Future: summary</h4>
                <asp:Table ID="Table35" runat="server" CellPadding="10" GridLines="Both" BackColor="#E0ECF8">
                    <asp:TableHeaderRow BackColor="#A9D0F5">
                        <asp:TableCell><b>Form</b></asp:TableCell>
                        <asp:TableCell><b>Use</b></asp:TableCell>
                        <asp:TableCell><b>Example</b></asp:TableCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>will</b></asp:TableCell>
                        <asp:TableCell>▶ πρόβλεψη <br />
                            ▶ στιγμιαία ή αυθόρμητη απόφαση, υπόσχεση, προσφορά, παράκληση, προειδοποίηση <br />
                            ▶ βέβαιη (αναπόφευκτη) πράξη στο μέλλον
                        </asp:TableCell>
                        <asp:TableCell>I am sure you<b>'ll enjoy</b> the film.<br />
                            They're here. I<b>'ll open</b> the door.<br />
                            I<b>'ll help</b> you with your homework.<br />
                            There <b>will be</b> a solar eclipse at 4.20 tomorrow.
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>going to</b></asp:TableCell>
                        <asp:TableCell>▶ μελλοντικό σχέδιο, πρόθεση <br />
                            ▶ πρόβλεψη (για την οποία υπάρχει κάποια ένδειξη στο παρόν)</asp:TableCell>
                        <asp:TableCell>They<b>'re going to get</b> married.<br />
                            Look at those clouds. It<b>'s going to rain</b></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>Present continuous</b></asp:TableCell>
                        <asp:TableCell>▶ προγραμματισμένο προσωπικό σχέδιο για το μέλλον</asp:TableCell>
                        <asp:TableCell>He<b>'s leaving</b> for Spain tomorrow.</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>Present simple</b></asp:TableCell>
                        <asp:TableCell>▶ προγράμματα (θεάτρων, κινηματογράφων κλπ), δρομολόγια (πλοίων, τρένων κλπ.)</asp:TableCell>
                        <asp:TableCell>The film <b>starts</b> at six.</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>Future continuous</b></asp:TableCell>
                        <asp:TableCell>▶ πράξη σε εξέλιξη σε κάποια ΄συγκεκριμένη στιγμή στο μέλλον <br />
                            ▶ βέβαιη πράξη στο μέλλον (μέρος προγράμματος ή ρουτίνας) <br />
                            ▶ για να ρωτήσουμε για τα μελλοντικά σχέδια κάποιου
                        </asp:TableCell>
                        <asp:TableCell>We<b>'ll be having</b> dinner at 7.30 tonight.<br />
                            I<b>'ll be working</b> all day on Monday.<br />
                            <b>Will</b> you <b>be using</b> your computer this evening?
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>Future perfect simple</b></asp:TableCell>
                        <asp:TableCell>▶ πράξη που θα έχει ολοκληρωθεί έως κάποια στιγμή στο μέλλον</asp:TableCell>
                        <asp:TableCell>We <b>will have arrived</b> by three o'clock.</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell BackColor="#CEE3F6"><b>Future perfect continuous</b></asp:TableCell>
                        <asp:TableCell>▶ πράξη που θα συνεχίζεται ως κάποια στιγμή στο μέλλον</asp:TableCell>
                        <asp:TableCell>We <b>will have been living</b> here for three years in May.</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <!-- telos J section-->
                <asp:Image runat="server" ImageUrl="~/Images/future-SIMPLE-WEB-page-001-1024x724.jpg" Width="800px"/>
            </div>
        </div>
    </div>
    <div id="AuthenticationError" runat="server" visible="false">
        <br />
        <p>Δεν επιτρέπεται η πρόσβαση χωρίς σύνδεση!<br />
        Παρακαλώ πραγματοποιείστε <a runat="server" href="~/Account/Login">σύνδεση</a> ή κάντε <a runat="server" href="~/Account/Register">εγγραφή</a>.</p>
    </div>
</asp:Content>
