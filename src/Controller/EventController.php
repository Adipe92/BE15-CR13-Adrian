<?php

namespace App\Controller;

use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;


use App\Entity\Events;
use App\Form\EventType;

class EventController extends AbstractController
{
    #[Route('/', name: 'event')]
    public function index(ManagerRegistry $doctrine): Response
    {
        $events = $doctrine->getManager()->getRepository(Events::class)->findAll();
        return $this->render('event/index.html.twig', [
            // 'controller_name' => 'EventController',
            "events" => $events
        ]);
    }

    #[Route('/create', name: 'event_create')]
   public function create(Request $request, ManagerRegistry $doctrine): Response
   {
       $event = new Events();
       $form = $this->createForm(EventType::class, $event);

       $form->handleRequest($request);

/* Here we have an if statement, if we click submit and if  the form is valid we will take the values from the form and we will save them in the new variables */
       if ($form->isSubmitted() && $form->isValid()) {
           $now = new \DateTime('now');

 // taking the data from the inputs with the getData() function and assign it to the $todo variable
           $event = $form->getData();
           $event->setEventDate($now);  // this field is not included in the form so we set the today date
           $em = $doctrine->getManager();
           $em->persist($event);
           $em->flush();

           $this->addFlash(
               'notice',
               'Event Added'
               );
     
           return $this->redirectToRoute('event');
       }

/* now to make the form we will add this line form->createView() and now you can see the form in create.html.twig file  */
       return $this->render('event/create.html.twig', ['form' => $form->createView()]);
   }

   #[Route('/details/{id}', name: 'details_event')]
    public function detalsEvent($id, ManagerRegistry $doctrine): Response
    {
        $event = $doctrine->getManager()->getRepository(Events::class)->find($id);
        return $this->render('event/details.html.twig', [
            // 'controller_name' => 'EventController',
            "event" => $event
        ]);
    }

    #[Route('/edit/{id}', name: 'edit_event')]
    public function editEvent($id, Request $request, ManagerRegistry $doctrine): Response
    {
        $event = $doctrine->getManager()->getRepository(Events::class)->find($id);
        $form = $this->createForm(EventType::class, $event);
 
        $form->handleRequest($request);
 
 /* Here we have an if statement, if we click submit and if  the form is valid we will take the values from the form and we will save them in the new variables */
        if ($form->isSubmitted() && $form->isValid()) {
            $now = new \DateTime('now');
 
  // taking the data from the inputs with the getData() function and assign it to the $todo variable
            $event = $form->getData();
            $event->setEventDate($now);  // this field is not included in the form so we set the today date
            $em = $doctrine->getManager();
            $em->persist($event);
            $em->flush();
 
            $this->addFlash(
                'notice',
                'Event Edited'
                );
      
            return $this->redirectToRoute('event');
        }
 
 /* now to make the form we will add this line form->createView() and now you can see the form in create.html.twig file  */
        return $this->render('event/edit.html.twig', ['form' => $form->createView()]);
    }

    #[Route('/delete/{id}', name: 'delete_event')]
    public function deleteEvent($id, ManagerRegistry $doctrine): Response
    {
        $event = $doctrine->getManager()->getRepository(Events::class)->find($id);
        $em = $doctrine->getManager();
        $em->remove($event);

        $em->flush();
        $this->addFlash("notice", "Event Removed!");
        return $this->redirectToRoute("event"); 
    }


}
